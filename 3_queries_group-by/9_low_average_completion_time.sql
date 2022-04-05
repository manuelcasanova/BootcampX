-- SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration, AVG(assignments.duration) AS average_estimated_duration
-- FROM assignment_submissions
-- JOIN assignments ON assignment_id = assignments.id
-- JOIN students ON student_id = students.id
-- WHERE end_date is NULL
-- AND assignment_submissions.duration < assignments.duration
-- GROUP BY student
-- ORDER BY average_assignment_duration DESC;

SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration, AVG(assignments.duration) AS average_estimated_duration
FROM assignment_submissions
JOIN assignments ON assignment_id = assignments.id
JOIN students ON student_id = students.id
WHERE end_date is NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;

-- SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
-- FROM students
-- JOIN assignment_submissions ON student_id = students.id
-- JOIN assignments ON assignments.id = assignment_id
-- WHERE end_date IS NULL
-- GROUP BY student
-- HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
-- ORDER BY average_assignment_duration;