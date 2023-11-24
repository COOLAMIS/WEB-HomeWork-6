SELECT s.fullname, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students s ON s.id = g.student_id 
GROUP BY s.fullname 
ORDER BY average_grade DESC 
LIMIT 5;

SELECT d.name, s.fullname, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN disciplines d ON d.id = g.discipline_id
WHERE d.id = 1
GROUP BY s.fullname
ORDER BY average_grade DESC
LIMIT 1;

SELECT d.name, gr.name, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students s ON s.id = g.student_id
JOIN disciplines d ON d.id = g.discipline_id
JOIN [groups] gr ON gr.id = s.group_id
WHERE d.id = 1
GROUP BY gr.name
ORDER BY average_grade DESC

SELECT ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g

SELECT t.fullname, d.name  
FROM disciplines d
JOIN teachers t ON t.id = d.teacher_id
WHERE t.id = 2
GROUP BY d.name

SELECT g.name, s.fullname
FROM students s
JOIN groups g ON g.id = s.group_id
WHERE g.id = 1
GROUP  BY s.fullname

SELECT gr.name, s.fullname, g.grade, d.name  
FROM grades g
JOIN students s ON s.id = g.student_id 
JOIN groups gr ON gr.id = s.group_id
JOIN disciplines d on d.id = g.discipline_id
WHERE gr.id = 1 AND d.id = 1
GROUP BY s.fullname  

SELECT t.fullname, ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN disciplines d ON d.id = g.discipline_id
JOIN teachers t ON t.id = d.teacher_id
WHERE t.id = 3
GROUP BY t.fullname 

SELECT s.fullname, d.name
FROM grades g 
JOIN students s ON s.id = g.student_id 
JOIN disciplines d ON d.id = g.discipline_id
WHERE s.id = 1
GROUP BY d.name

SELECT s.fullname, t.fullname, d.name 
FROM disciplines d 
JOIN teachers t ON t.id  = d.teacher_id 
JOIN grades g ON g.discipline_id = d.id
JOIN students s ON s.id = g.student_id
WHERE s.id = 1 AND t.id = 1
GROUP BY d.name


