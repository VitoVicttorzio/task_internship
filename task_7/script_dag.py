import pandas as pd
import re
import os
from datetime import datetime, timedelta
from airflow import DAG
from airflow.sensors.filesystem import FileSensor
from airflow.operators.python import PythonOperator, BranchPythonOperator
from airflow.operators.bash import BashOperator
from airflow.utils.task_group import TaskGroup
from airflow.models import Variable  


FILE_PATH = Variable.get("FILE_PATH", default_var='/opt/airflow/data/tiktok_google_play_reviews.csv')
LOG_FILE = Variable.get("LOG_FILE", default_var='/opt/airflow/logs/file_log.txt')


def check_if_file_empty(file_path):
    return os.stat(file_path).st_size == 0


def branch_check_file(file_path):
    if check_if_file_empty(file_path):
        return 'log_empty_file'
    return 'process_data'


def replace_nulls(file_path):
    df = pd.read_csv(file_path, encoding='utf-8', low_memory=False, on_bad_lines='skip')
    df = df.replace('null', '-')
    df = df.fillna('-')
    df.to_csv(file_path, index=False)


def sort_data(file_path):
    df = pd.read_csv(file_path, encoding='utf-8', low_memory=False, on_bad_lines='skip')
    df['at'] = pd.to_datetime(df['at'], errors='coerce')  
    df = df.dropna(subset=['at'])
    df = df.sort_values(by='at', ascending=False)
    df.to_csv(file_path, index=False)
    print(df.dtypes)


def clean_content(file_path):
    df = pd.read_csv(file_path, encoding='utf-8', low_memory=False, on_bad_lines='skip')
    df['content'] = df['content'].apply(lambda x: re.sub(r'[^\w\s.,?!]', '', str(x)))
    df.to_csv(file_path, index=False)

default_args = {
    'owner': 'vb',
    'retries': 2,
    'retry_delay': timedelta(minutes=1),
}

with DAG(
    dag_id='main_dag',
    default_args=default_args,
    description='DAG for processing data',
    schedule=None,
    start_date=datetime(2025, 1, 2),
    catchup=False,
) as dag:

    file_sensor = FileSensor(
        task_id='file_sensor',
        fs_conn_id='fs_default',
        filepath=FILE_PATH,
        poke_interval=20,
        timeout=600,
    )

    branch_task = BranchPythonOperator(
        task_id='branch_task',
        python_callable=branch_check_file,
        op_args=[FILE_PATH], 
    )

    log_empty_file = BashOperator(
        task_id='log_empty_file',
        bash_command=f'echo "File {FILE_PATH} is empty" >> {LOG_FILE}', 
    )

    with TaskGroup('process_data') as processing_group:
        replace_nulls_task = PythonOperator(
            task_id='replace_nulls',
            python_callable=replace_nulls,
            op_kwargs={'file_path': FILE_PATH},
        )

        sort_data_task = PythonOperator(
            task_id='sort_data',
            python_callable=sort_data,
            op_kwargs={'file_path': FILE_PATH},
        )

        clean_content_task = PythonOperator(
            task_id='clean_content',
            python_callable=clean_content,
            op_kwargs={'file_path': FILE_PATH},
        )


file_sensor >> branch_task
branch_task >> [log_empty_file, processing_group]

