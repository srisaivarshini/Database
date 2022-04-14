-- INSERT INTO department VALUES (4,"SPORTS");
-- SELECT * FROM department;
-- INSERT INTO book VALUES ("623-6-765982-","Bad book",2022,"Author4");
-- SELECT * FROM book;

-- UPDATE Student SET NAME = "My Name" WHERE std_id = 1;
-- SELECT * FROM Student;
-- UPDATE department SET department_name = "MY DEPARTMENT" WHERE Department_id = 4;
-- SELECT * FROM department;

-- DELETE FROM department WHERE department_id = 4;
-- SELECT * FROM department;

-- SELECT * FROM department WHERE department_id = 1;

-- SELECT * FROM department JOIN Student WHERE department.department_id=Student.department_id;

-- SELECT * FROM student JOIN returndetails WHERE Student.std_id=returndetails.std_id;

-- SELECT COUNT(std_id) FROM student;

-- SELECT Max(issue_id) FROM issuedetails;

-- SELECT Min(return_id) FROM returndetails;

-- SELECT * FROM student,book,bookcopy;