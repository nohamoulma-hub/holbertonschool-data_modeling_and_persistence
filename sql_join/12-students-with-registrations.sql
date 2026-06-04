SELECT students.name AS student_name
From students
WHERE students.id IN (
    SELECT student_id
    FROM registrations
)
ORDER BY student_name ASC


/**
Le service des étudiants souhaite obtenir la liste des étudiants actuellement inscrits à au moins un cours.

Le résultat doit indiquer :

le nom de l'étudiant
Chaque étudiant ne doit apparaître qu'une seule fois.

La liste doit être classée par ordre alphabétique selon le nom des étudiants.
**/