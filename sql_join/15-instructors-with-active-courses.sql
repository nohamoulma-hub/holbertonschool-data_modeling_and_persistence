SELECT DISTINCT instructors.name AS instructor_name
FROM instructors
INNER JOIN courses ON instructors.id = courses.instructor_id
INNER JOIN registrations ON courses.id = registrations.course_id
ORDER BY instructor_name ASC;

/**
Le directeur académique souhaite obtenir la liste des enseignants qui dispensent actuellement au moins un cours comptant au moins un étudiant inscrit.

Le résultat doit indiquer :

le nom de l'enseignant
Chaque enseignant ne doit apparaître qu'une seule fois.

La liste doit être classée par ordre alphabétique selon le nom des enseignants.
/**
