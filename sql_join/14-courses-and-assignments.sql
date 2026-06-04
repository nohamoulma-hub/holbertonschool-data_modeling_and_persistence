SELECT courses.title AS course_title, assignments.title AS assignment_title
FROM courses
LEFT JOIN assignments ON courses.id = assignments.course_id
ORDER BY course_title ASC, assignment_title ASC;

/**
L'équipe pédagogique souhaite passer en revue tous les cours et les devoirs qui y sont associés.

Elle souhaite que le résultat inclue tous les cours, même si certains ne comportent encore aucun devoir.

Le résultat doit indiquer :

le titre du cours
le titre du devoir, le cas échéant
Si un cours ne comporte aucun devoir, il doit tout de même apparaître dans le résultat.

La liste doit être présentée par ordre alphabétique selon le titre du cours. Lorsqu'un cours apparaît sur plusieurs lignes,
les titres de ses devoirs doivent également apparaître par ordre alphabétique.
**/