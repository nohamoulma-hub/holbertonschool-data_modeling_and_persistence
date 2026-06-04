SELECT courses.title AS course_title, COUNT(student_id) AS enrollments_count
FROM courses
LEFT JOIN enrollments ON courses.id = enrollments.course_id
GROUP BY courses.title
ORDER BY enrollments_count DESC, course_title ASC