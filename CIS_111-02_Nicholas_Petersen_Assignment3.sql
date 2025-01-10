--CIS_111-02_Assignment_3_Nicholas_Petersen

USE Cis111_MurachCollege


--Step 1
SELECT	DepartmentName,
		COUNT(InstructorID) As NumInstructors,
		MAX(AnnualSalary) AS TopSalary
FROM	Departments
JOIN	Instructors ON Departments.DepartmentID = Instructors.DepartmentID
GROUP BY DepartmentName
ORDER BY NumInstructors DESC;


--Step 2
SELECT	CONCAT(FirstName, ' ' ,LastName) AS InstructorName,
		COUNT(CourseID) As NumCourses,
		SUM(CourseUnits) AS TotalUnits
FROM	Instructors
JOIN	Courses ON Instructors.InstructorID = Courses.InstructorID
GROUP BY CONCAT(FirstName, ' ' , Lastname)
ORDER BY SUM(CourseUnits) DESC;


--Step 3
SELECT	DepartmentName,
		CourseDescription,
		COUNT(StudentID) AS NumStudents
FROM	Departments d
JOIN	Courses c ON d.DepartmentID = c.DepartmentID
JOIN	StudentCourses sc ON c.CourseID = sc.CourseID
GROUP BY DepartmentName, CourseDescription
ORDER BY DepartmentName, COUNT(StudentID);


--Step 4
SELECT	CONCAT(LastName, ', ', FirstName) AS InstructorName,
		COUNT(CourseID) AS NumCourse
FROM	Instructors
JOIN	Courses ON Instructors.InstructorID = Courses.InstructorID
WHERE	Status = 'P'
GROUP BY  CONCAT(LastName, ', ', FirstName) WITH ROLLUP;


--STEP 5
SELECT	DISTINCT LastName,
				 FirstName
FROM	Instructors
WHERE InstructorID IN 
		(SELECT InstructorID
		 FROM Courses)
ORDER BY LastName, FirstName;


--Step 6
SELECT	LastName, 
		FirstName, 
		AnnualSalary
FROM Instructors
WHERE AnnualSalary > (SELECT AVG(AnnualSalary) FROM Instructors)
ORDER BY AnnualSalary DESC;

--Step 7
SELECT	LastName,
		FirstName
FROM	Instructors
WHERE	NOT EXISTS (SELECT LastName, FirstName 
					FROM Instructors AS Instructors_Sub
					JOIN Courses ON Courses.InstructorID = Instructors.InstructorID
					WHERE Instructors.InstructorID = Instructors_Sub.InstructorID)
ORDER BY LastName, FirstName;


--Step 8

WITH FullTimeStudents AS(
	SELECT	Students.StudentID,
			SUM(CourseUnits) AS TotalUnits
	FROM	Students
	JOIN	StudentCourses ON Students.StudentID = StudentCourses.StudentID
	JOIN	Courses ON StudentCourses.CourseID = Courses.CourseID
	GROUP BY Students.StudentID
	HAVING	SUM(CourseUnits) > 9
)
SELECT	StudentID,
		TotalUnits,
		(FullTimeCost + PerUnitCost) * TotalUnits AS Tuition
FROM	FullTimeStudents
CROSS JOIN Tuition