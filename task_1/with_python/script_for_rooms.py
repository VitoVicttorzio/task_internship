import json
import psycopg

with open(r'E:\task_internship\task_1\data\rooms.json') as file_2:
    data_list_2 = json.load(file_2)

conn = psycopg.connect("dbname=student user=postgres password=victor host=localhost")
cur = conn.cursor()

cur.execute("""
CREATE TABLE IF NOT EXISTS rooms (
    id INT PRIMARY KEY,
    name VARCHAR(30),
    FOREIGN KEY (id) REFERENCES students(id)
);
""")


for data in data_list_2:
    cur.execute("INSERT INTO rooms(id, name) VALUES (%s, %s)",
                (data["id"], data["name"]))


conn.commit()


cur.close()
conn.close()
