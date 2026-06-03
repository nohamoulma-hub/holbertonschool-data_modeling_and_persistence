SELECT courses.title AS course_title
FROM courses
INNER JOIN enrollments ON courses.id = enrollments.course_id
GROUP BY courses.title
HAVING COUNT(enrollments.student_id) > (
    SELECT AVG(student_count)
    FROM (
        SELECT COUNT(student_id) AS student_count
        FROM enrollments
        GROUP BY course_id
        )
    )
ORDER BY course_title ASC