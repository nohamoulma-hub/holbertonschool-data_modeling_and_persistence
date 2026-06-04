SELECT courses.title AS course_title
FROM courses
INNER JOIN assignments ON courses.id = assignments.course_id
GROUP BY courses.title
HAVING COUNT(assignments.id) > (
    SELECT AVG(assignments_count)
    FROM (
        SELECT COUNT(assignments.course_id) AS assignments_count
        FROM assignments
        GROUP by course_id
    )
)
ORDER BY course_title ASC;


/**
L'équipe chargée des programmes d'études souhaite recenser les cours dont la charge de travail liée aux devoirs est supérieure à la moyenne.

Elle définit cela comme suit :

les cours dont le nombre de devoirs est supérieur au nombre moyen de devoirs par cours dans l'ensemble de données
Le résultat doit indiquer :

le titre du cours
La liste doit être classée par ordre alphabétique selon le titre du cours.
**/