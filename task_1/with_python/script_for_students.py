import json
import psycopg

with open(r'E:\task_internship\task_1\data\students.json') as file_1:
    data_list_1 = json.load(file_1)


conn = psycopg.connect("dbname=student user=postgres password=victor host=localhost")
cur = conn.cursor()

cur.execute("""
CREATE TABLE IF NOT EXISTS students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    birthday TIMESTAMP,
    room INT,
    sex VARCHAR(1)
);
""")


for data in data_list_1:
    cur.execute("INSERT INTO students(id, name, birthday, room, sex) VALUES (%s, %s, %s, %s, %s)",
                (data["id"], data["name"], data["birthday"], data["room"], data["sex"]))

conn.commit()

cur.close()
conn.close()
