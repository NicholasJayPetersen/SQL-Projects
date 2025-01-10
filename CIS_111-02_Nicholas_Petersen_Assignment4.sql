--CIS_111-02_Nicholas_Petersen_Assignment4

USE Cis111_MurachCollege;
SELECT * INTO NPDepartments FROM Departments;
SELECT * INTO NPInstructors FROM Instructors;


--Step 1
--Department ID is assigned next unique value
INSERT INTO NPDepartments
VALUES ('History');


--Step 2
INSERT INTO NPInstructors
VALUES
    ('Benedict', 'Susan', 'P', 0, GETDATE(), 34000.00, 9),
	('Adams', null, 'F', 1, GETDATE(), 66000.00, 9);


--Step 3
UPDATE NPInstructors
SET AnnualSalary = 35000.00
WHERE InstructorID = 17;

--Step 4
DELETE FROM NPInstructors
WHERE InstructorID = 18;


--Step 5
DELETE FROM NPInstructors
WHERE DepartmentID = 9;

DELETE FROM NPDepartments
WHERE DepartmentID = 9;


--Step 6
UPDATE NPInstructors
SET AnnualSalary = (AnnualSalary * 1.05);


--Step 7
--Deletes all instructors that are not listed anywhere in the courses table
DELETE FROM NPInstructors
WHERE instructorID NOT IN (SELECT DISTINCT InstructorID FROM Courses);


--Step 8
CREATE TABLE NPGradStudents
(StudentID INT PRIMARY KEY,
LastName VARCHAR(25) NOT NULL,
FirstName VARCHAR(25) NOT NULL,
EnrollmentDate DATE NOT NULL,
GraduationDate Date NULL);


--Step 9
INSERT INTO NPGradStudents
SELECT *
FROM Students
WHERE GraduationDate IS NOT NULL;