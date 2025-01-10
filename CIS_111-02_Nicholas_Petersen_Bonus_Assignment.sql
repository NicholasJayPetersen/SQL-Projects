--CIS_111-02_Nicholas_Petersen_Bonus_Assignment

USE Cis111_MurachCollege;
GO


--Chapter 13
--Step 1
--creates a vew for students and their registered courses
--must join student courses to reach courses
CREATE VIEW StudentCoursesMin
AS
SELECT FirstName,
       LastName,
       CourseNumber,
       CourseDescription,
       CourseUnits
FROM Students
    JOIN StudentCourses
        ON Students.StudentID = StudentCourses.StudentID
    JOIN Courses
        ON StudentCourses.CourseID = Courses.CourseID;
GO

--Step 2
--creates a nested view from the first view for a student summary by using previous view
CREATE VIEW StudentCoursesSummary
AS
SELECT LastName,
       FirstName,
       COUNT(FirstName + LastName) AS CourseCount,
       SUM(CourseUnits) AS UnitsTotal
FROM StudentCoursesMin
GROUP BY LastName,
         FirstName
GO


--Chapter 14
--Step 3
--declare variable to store number of undergrads
DECLARE @NotGraduated int;

--set count the number of students without a grad date and store it
SET @NotGraduated =
(
    SELECT COUNT(StudentID) FROM Students WHERE GraduationDate IS NULL
);

--print out results based on condition
IF @NotGraduated >= 100
    PRINT 'The number of undergrad students is greater than or equal to 100';
ELSE
    PRINT 'The number of undergrad students is less than 100';


--Step 4
--declare variables
DECLARE @InstructorCount int;
DECLARE @AvgSalary money;

--set variables getting the total instructions and finding the average salaray
SET @InstructorCount =
(
    SELECT COUNT(InstructorID) FROM Instructors
);
SET @AvgSalary =
(
    SELECT AVG(AnnualSalary) FROM Instructors
);

--print out based on condition
IF @InstructorCount > 10
    PRINT 'Intructor Count is ' + CONVERT(varchar, @InstructorCount) + ' and Average Salary is $'
          + CONVERT(varchar, @AvgSalary);
ELSE
    PRINT 'The number of fulltime instructors is less than 10';
GO

--Chapter 15
--Step 5


--parameter mirrors column definition in table
CREATE PROC spInsertDepartment @DeptName varchar(40) = null
AS
INSERT INTO Departments
VALUES (@DeptName);

--adds history and physical education to the departments table
EXEC spInsertDepartment History;
EXEC spInsertDepartment 'Physical Education';
GO

--Step 6
--function to retrieve the total number of credits enrolled for a student
CREATE FUNCTION fnStudentUnits (@StudentID int)
RETURNS int
BEGIN
    RETURN
    (
        SELECT SUM(CourseUnits)
        FROM StudentCourses
            JOIN Courses
                ON StudentCourses.CourseID = Courses.CourseID -- allows for retrieving number of course units
        WHERE StudentID = @StudentID
    );
END;
GO

--calls function to create a column with total course units for each student
SELECT StudentID,
       CourseNumber,
       CourseUnits,
       dbo.fnStudentUnits(StudentID) AS TotalUnits
FROM StudentCourses
    JOIN Courses
        ON StudentCourses.CourseID = Courses.CourseID