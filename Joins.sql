
 use SQLtraining
CREATE TABLE professor(
    ID int,
    Name varchar(20),
    Salary int
);

CREATE TABLE teaches(
    course_id int,
    prof_id int,
    course_name varchar(20)
);

INSERT INTO professor VALUES (1, 'Rohan', 57000);
INSERT INTO professor VALUES (2, 'Aryan', 45000);
INSERT INTO professor VALUES (3, 'Arpit', 60000);
INSERT INTO professor VALUES (4, 'Harsh', 50000);
INSERT INTO professor VALUES (5, 'Tara', 55000);


INSERT INTO teaches VALUES (1, 1, 'English');
INSERT INTO teaches VALUES (1, 3, 'Physics');
INSERT INTO teaches VALUES (2, 4, 'Chemistry');
INSERT INTO teaches VALUES (2, 5, 'Mathematics');

select * from professor
select * from teaches

SELECT teaches.course_id, teaches.prof_id, professor.Name, professor.Salary
FROM professor 
FULL JOIN teaches ON professor.ID = teaches.prof_id;