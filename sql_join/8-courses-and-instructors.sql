SELECT courses.title AS course_title, instructors.name
FROM instructors
LEFT JOIN courses ON instructors.id = courses.instructor_id
ORDER BY course_title ASC