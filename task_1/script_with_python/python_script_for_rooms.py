import json
import psycopg2

# Load data from the JSON file
with open(r'E:\task_internship\task_1\data\rooms.json') as file_2:
    data_list_2 = json.load(file_2)

# Connect to PostgreSQL using psycopg2
conn = psycopg2.connect("dbname=student user=postgres password=victor host=localhost")
cur = conn.cursor()

# Create the rooms table if it doesn't exist
cur.execute("""
CREATE TABLE IF NOT EXISTS rooms (
    id INT PRIMARY KEY,
    name VARCHAR(30),
    FOREIGN KEY (id) REFERENCES students(id)
);
""")

for data in data_list_2:
    # Check if the room with the given id already exists
    cur.execute("SELECT 1 FROM rooms WHERE id = %s", (data["id"],))
    if not cur.fetchone():  # If the room doesn't exist, insert it
        cur.execute("INSERT INTO rooms(id, name) VALUES (%s, %s)", (data["id"], data["name"]))

# Commit the changes to the database
conn.commit()

# Fetch the data from the rooms table
cur.execute("SELECT id, name FROM rooms")
rows = cur.fetchall()

# Print the fetched data
for row in rows:
    print(f"ID: {row[0]}, Name: {row[1]}")

# Close the cursor and the connection
cur.close()
conn.close()
