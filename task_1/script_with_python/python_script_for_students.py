import json
import psycopg2

# Load student data from the JSON file
with open(r'E:\task_internship\task_1\data\students.json') as file_1:
    data_list_1 = json.load(file_1)

# Connect to PostgreSQL using psycopg2
conn = psycopg2.connect("dbname=student user=postgres password=victor host=localhost")
cur = conn.cursor()

# Create the students table if it doesn't exist
cur.execute("""
CREATE TABLE IF NOT EXISTS students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    birthday TIMESTAMP,
    room INT,
    sex VARCHAR(1)
);
""")

# Insert data into the students table
for data in data_list_1:
    # Check if the student with the given id already exists
    cur.execute("SELECT 1 FROM students WHERE id = %s", (data["id"],))
    if not cur.fetchone():  # If the student doesn't exist, insert it
        cur.execute("INSERT INTO students(id, name, birthday, room, sex) VALUES (%s, %s, %s, %s, %s)",
                    (data["id"], data["name"], data["birthday"], data["room"], data["sex"]))

# Commit the changes to the database
conn.commit()

# Fetch the data from the students table
cur.execute("SELECT id, name, birthday, room, sex FROM students")
rows = cur.fetchall()

# Print the fetched data
for row in rows:
    print(f"ID: {row[0]}, Name: {row[1]}, Birthday: {row[2]}, Room: {row[3]}, Sex: {row[4]}")

# Close the cursor and the connection
cur.close()
conn.close()
