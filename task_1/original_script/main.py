# Import necessary libraries
import typer
import requests
import os
import psycopg2
from psycopg2 import sql
import json
import csv
import dicttoxml

# Creates an instance of Typer application
app = typer.Typer()

# Function for downloading URL
def download_file(url, filename):
    response = requests.get(url)
    response.raise_for_status()
    with open(filename, 'wb') as f:
        f.write(response.content)

# Function for creating folders
def create_folder(folder_name):
    if not os.path.exists(folder_name):
        os.makedirs(folder_name)
        typer.echo(f"Folder '{folder_name}' created.")
    else:
        typer.echo(f"Folder '{folder_name}' already exists.")

query_names = {
    "1": "list_of_rooms_and_number_of_students",
    "2": "top_5_rooms_with_smallest_avg_age",
    "3": "top_5_with_largest_age_difference",
    "4": "list_of_rooms_with_mixed_sex_students"
}

# Execute function main as a CLI command (default)
@app.command()
def main():
    typer.echo("Hello, nice to meet you!")

    # Create folders for data and result of queries
    json_folder = "data_in_json_format"
    result_folder = "results_of_queries"
    create_folder(json_folder)
    create_folder(result_folder)

    #  Prompt URLs for JSON files
    students_url = typer.prompt("The URL for the students JSON file [Press Enter]", default="https://raw.githubusercontent.com/VitoVicttorzio/task_internship/refs/heads/main/task_1/data/data_about_students.json")
    rooms_url = typer.prompt("The URL for the rooms JSON file [Press Enter]", default="https://raw.githubusercontent.com/VitoVicttorzio/task_internship/refs/heads/main/task_1/data/data_about_rooms.json")

    # Define full paths for JSON files in the json_folder
    students_file = os.path.join(json_folder, "students.json")
    rooms_file = os.path.join(json_folder, "rooms.json")

    download_file(students_url, students_file)
    download_file(rooms_url, rooms_file)

    typer.echo(f"JSON files downloaded successfully and saved in '{json_folder}'.")

    conn = psycopg2.connect(
        dbname=typer.prompt("Enter your database name"),
        user=typer.prompt("Enter your database username"),
        password=typer.prompt("Enter your database password", hide_input=True),
        host=typer.prompt("Enter your database host", default="localhost"),
        port=typer.prompt("Enter your database port", default="5432")
    )
    
    typer.echo("Connected to the database successfully!")
    cursor = conn.cursor()
       
    try:
        # Create tables
        cursor.execute("""
            CREATE TABLE IF NOT EXISTS rooms (
            id INT PRIMARY KEY,  
            name VARCHAR(50) NOT NULL
            );

            CREATE TABLE IF NOT EXISTS students (
            id INT PRIMARY KEY, 
            name VARCHAR(100) NOT NULL,
            birthday DATE,
            sex CHAR(1) NOT NULL,
            room INT NOT NULL REFERENCES rooms(id)
            );
        """)

        conn.commit()

        # Load JSON data
        with open(rooms_file, "r") as f:
            rooms_data = json.load(f)
        with open(students_file, "r") as f:
            students_data = json.load(f)

        # Insert or update data in students
        for room in rooms_data:
            cursor.execute(
                "INSERT INTO rooms (id, name) VALUES (%s, %s) ON CONFLICT (id) DO NOTHING;",
                (room['id'], room['name'])
            )

        for student in students_data:
            cursor.execute(
                """
                INSERT INTO students (id, name, birthday, sex, room)
                VALUES (%s, %s, %s, %s, %s)
                ON CONFLICT (id) DO NOTHING;
                """,
                (student['id'], student['name'], student['birthday'], student['sex'], student['room'])
            )

        conn.commit()

        typer.echo("Data successfully written to the database.")

        # Optimize by adding with indexes
        cursor.execute("CREATE INDEX IF NOT EXISTS ind_rooms_id ON rooms(id);")
        cursor.execute("CREATE INDEX IF NOT EXISTS idx_students_room_sex ON students(room, sex);")
        conn.commit()

        typer.echo("Indexes created successfully.")

        # Queries based on choice
        while True:
            query_choice = typer.prompt("""What query do you want to execute?
                1) List of rooms and number of students in each of them
                2) Top 5 rooms with the smallest average age of students
                3) Top 5 with the largest age difference
                4) List of rooms where mixed-sex students live
                [Choose 1, 2, 3, 4]""")

            if query_choice == "1":
                query = """
                SELECT 
                    rooms.id AS room_id, 
                    rooms.name AS room_name, 
                    COUNT(students.id) AS total_students
                FROM 
                    rooms 
                LEFT JOIN 
                    students ON rooms.id = students.room 
                GROUP BY 
                    rooms.id, rooms.name
                ORDER BY 
                    total_students DESC;
                """
            elif query_choice == "2":
                query = """
                WITH age_data AS (
                    SELECT
                        rooms.id AS room_id, 
                        rooms.name AS room_name, 
                        AVG(EXTRACT(YEAR FROM AGE(students.birthday))) AS avg_age
                    FROM 
                        rooms 
                    LEFT JOIN 
                        students ON rooms.id = students.room
                    GROUP BY 
                        rooms.id, rooms.name
                )
                SELECT room_id, room_name, ROUND(avg_age, 2) AS avg_age
                FROM age_data
                ORDER BY avg_age ASC
                LIMIT 5;
                """
            elif query_choice == "3":
                query = """
                WITH age_diff AS (
                    SELECT 
                        rooms.id AS room_id,
                        rooms.name AS room_name,
                        MAX(EXTRACT(YEAR FROM AGE(students.birthday))) -
                        MIN(EXTRACT(YEAR FROM AGE(students.birthday))) AS age_difference
                    FROM 
                        rooms
                    INNER JOIN 
                        students ON rooms.id = students.room
                    GROUP BY 
                        rooms.id, rooms.name
                )
                SELECT room_id, room_name, age_difference
                FROM age_diff
                ORDER BY age_difference DESC
                LIMIT 5;
                """
            elif query_choice == "4":
                query = """
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
                """
            else:
                typer.echo("Invalid choice. Please try again.")
                continue

            # Execute the query based on user choice
            cursor.execute(query)
            results = cursor.fetchall()
            typer.echo("Results of query:")
            for row in results:
                typer.echo(row)

            # Use the query names mapping to get the file name
            query_name = query_names.get(query_choice, "unknown_query")
            changed_query_name = query_name.replace(" ", "_").replace("/", "_").replace("-", "_")

            # Ask the user for the file format
            file_format = typer.prompt("What format do you want to save the results: json, xml, csv?")

            # Create the file name using the changed query name
            file_name = os.path.join(result_folder, f"{changed_query_name}.{file_format}")

            # Write result into file
            with open(file_name, 'wb' if file_format == "xml" else 'w') as f:
                if file_format == "json":
                    json.dump(results, f, indent=4, default=str)
                elif file_format == "csv":
                    writer = csv.writer(f)
                    writer.writerow([desc[0] for desc in cursor.description])
                    writer.writerows(results)
                elif file_format == "xml":
                    xml_data = dicttoxml.dicttoxml([dict(zip([desc[0] for desc in cursor.description], row)) for row in results])
                    f.write(xml_data)

            typer.echo(f"Results saved in {file_name}.")

            if not typer.confirm("Do you want to execute another query?"):
                break

        typer.echo("Thank you for chosen me!")
        typer.echo("Follow me on Github profile: https://github.com/VitoVicttorzio")

    except Exception as e:
        typer.echo(f"An error occurred: {e}")
    finally:
        cursor.close()
        conn.close()
        typer.echo("Database connection closed")

if __name__ == "__main__":
    app()
