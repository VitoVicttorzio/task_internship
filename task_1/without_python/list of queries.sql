-- Index

CREATE INDEX ind_rooms_id ON rooms(id);
CREATE INDEX idx_students_room_sex ON students(room);

-- list of rooms and quantity of students 

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
    
 
-- 5 rooms with the smallest average age of studetns
   

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


-- top 5 with the largest age difference

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

-- different genders in rooms

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



   
   