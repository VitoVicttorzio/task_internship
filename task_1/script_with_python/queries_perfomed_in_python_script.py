import psycopg2

# Connect to the PostgreSQL database
conn = psycopg2.connect("dbname=student user=postgres password=victor host=localhost")
cur = conn.cursor()

# Create the indices
cur.execute("CREATE INDEX IF NOT EXISTS ind_rooms_id ON rooms(id);")
cur.execute("CREATE INDEX IF NOT EXISTS idx_students_room_sex ON students(room);")

run_query_1 = False  # List of rooms and quantity of students
run_query_2 = True  # 5 rooms with the smallest average age
run_query_3 = False  # Top 5 rooms with the largest age difference
run_query_4 = False   # Rooms with different genders

# Query 1: List of rooms and quantity of students
if run_query_1:
    cur.execute("""
    SELECT 
        rooms.id AS room_id, 
        rooms.name AS room_name, 
        COUNT(students.id) AS total_rooms
    FROM 
        rooms 
    LEFT JOIN 
        students ON rooms.id = students.room
    GROUP BY 
        1,2
    ORDER BY 
        3 DESC;
    """)
    rooms_and_students = cur.fetchall()
    print("List of rooms and quantity of students:")
    for row in rooms_and_students:
        print(f"Room ID: {row[0]}, Room Name: {row[1]}, Total Students: {row[2]}")

# Query 2: 5 rooms with the smallest average age of students
if run_query_2:
    cur.execute("""
    WITH age AS (
        SELECT
            rooms.id AS room_id, 
            rooms.name AS room_name, 
            AVG(EXTRACT(YEAR FROM AGE(students.birthday))) AS average_age
        FROM 
            rooms 
        LEFT JOIN 
            students ON rooms.id = students.room
        GROUP BY 
            rooms.id, rooms.name
    )
    SELECT 
        room_id, 
        room_name, 
        ROUND(average_age, 2) AS min_average_age
    FROM 
        age
    ORDER BY 
        average_age ASC
    LIMIT 5;
    """)
    smallest_avg_age = cur.fetchall()
    print("\n5 rooms with the smallest average age of students:")
    for row in smallest_avg_age:
        print(f"Room ID: {row[0]}, Room Name: {row[1]}, Average Age: {row[2]}")

# Query 3: Top 5 rooms with the largest age difference
if run_query_3:
    cur.execute("""
    WITH age_difference AS (
        SELECT 
            rooms.id AS room_id,
            rooms.name AS room_name,
            MAX(EXTRACT(YEAR FROM AGE(students.birthday))) - 
            MIN(EXTRACT(YEAR FROM AGE(students.birthday))) AS age_diff
        FROM 
            rooms
        INNER JOIN 
            students ON rooms.id = students.room
        GROUP BY 
            rooms.id, rooms.name
    )
    SELECT 
        room_id, 
        room_name, 
        age_diff
    FROM 
        age_difference
    ORDER BY 
        age_diff DESC
    LIMIT 5;
    """)
    largest_age_diff = cur.fetchall()
    print("\nTop 5 rooms with the largest age difference:")
    for row in largest_age_diff:
        print(f"Room ID: {row[0]}, Room Name: {row[1]}, Age Difference: {row[2]}")

# Query 4: Rooms with different genders
if run_query_4:
    cur.execute("""
    SELECT 
        rooms.id AS room_id,
        rooms.name AS room_name
    FROM 
        rooms
    INNER JOIN 
        students ON rooms.id = students.room
    GROUP BY 
        rooms.id, rooms.name
    HAVING 
        COUNT(DISTINCT students.sex) > 1;
    """)
    different_genders_rooms = cur.fetchall()
    print("\nRooms with different genders:")
    for row in different_genders_rooms:
        print(f"Room ID: {row[0]}, Room Name: {row[1]}")

# Close the cursor and the connection
cur.close()
conn.close()