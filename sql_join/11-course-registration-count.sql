SELECT courses.title AS course_title, COUNT(student_id) AS number_registration
FROM courses
LEFT JOIN registrations ON courses.id = registrations.course_id
GROUP BY courses.title
ORDER BY number_registration DESC, course_title ASC





/**
L'équipe pédagogique souhaite connaître le nombre d'étudiants inscrits à chaque cours.

Elle souhaite que le résultat inclue tous les cours, même ceux auxquels aucun étudiant n'est actuellement inscrit.

Le résultat doit indiquer :

le titre du cours
le nombre d'inscriptions
Les cours comptant le plus grand nombre d'inscriptions doivent apparaître en premier. Si deux cours ont le même nombre d'inscriptions,
ils doivent être classés par ordre alphabétique selon le titre du cours.
**/
