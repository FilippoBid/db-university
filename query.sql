--Studenti nati nel 1990 (160)
SELECT * FROM `students`
WHERE YEAR(`date_of_birth`) =1990
ORDER BY `date_of_birth` ASC;



--Corsi che valgono più di 10 crediti (479)

SELECT * FROM `courses` WHERE `cfu` > 10
ORDER BY `courses` ASC;




--Studenti che hanno più di 30 anni

SELECT * FROM `students`
WHERE  DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(),`date_of_birth`)), '%Y') + 0  > 30
ORDER BY `date_of_birth` ASC;

--Corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)

SELECT * FROM `courses`
WHERE `period` LIKE "I %"
AND `year`= 1
ORDER BY `period` ASC;

--Appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)

SELECT *
FROM `exams` 
WHERE `date`= "2020-06-20"
AND `hour` > "14%"
ORDER BY `hour` ASC;

--Corsi di laurea magistrale (38)

SELECT * FROM `degrees`
WHERE `level` = "magistrale"
ORDER BY `level` ASC;



--Dipartimenti Università? (12)

SELECT COUNT(*) 
FROM `departments`



--Insegnanti che non hanno un numero di telefono? (50)

SELECT COUNT(*) 
FROM `teachers`
WHERE `phone` IS NOT NULL;