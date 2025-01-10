--CIS 111-02 Nicholas Petersen Assignment 2

USE Cis111_MurachCollege

--Step 1
SELECT	CourseNumber, 
		CourseDescription, 
		DepartmentName
FROM Courses
	JOIN Departments
		ON Courses.DepartmentID = Departments.DepartmentID
ORDER BY DepartmentName, CourseNumber ASC;


--Step 2
SELECT	LastName,
		FirstName,
		CourseNumber,
		CourseDescription
FROM Courses
	JOIN Instructors
		ON Courses.InstructorID = Instructors.InstructorID
WHERE Instructors.Status = 'P'
ORDER BY LastName, FirstName ASC;


--Step 3
SELECT	DepartmentName,
		CourseDescription,
		FirstName,
		LastName
FROM Courses AS c
	JOIN Instructors AS i
		ON c.InstructorID = i.InstructorID
	JOIN Departments AS d
		ON i.DepartmentID = d.DepartmentID
WHERE CourseUnits = 3
ORDER BY DepartmentName, CourseDescription ASC;


--Step 4
SELECT	DepartmentName,
		CourseDescription,
		LastName,
		FirstName
FROM Departments AS d
	JOIN Courses AS c
		ON d.DepartmentID = c.DepartmentID
	JOIN StudentCourses AS sc
		ON c.CourseID = sc.CourseID
	JOIN Students AS s
		ON sc.StudentID = s.StudentID
WHERE DepartmentName = 'English'
ORDER BY DepartmentName, CourseDescription ASC;


--Step 5
SELECT  LastName,
		FirstName,
		CourseDescription
FROM Instructors
	LEFT JOIN Courses
		ON Instructors.InstructorID = Courses.InstructorID	
ORDER BY LastName, FirstName;


--Step 6
SELECT	'Undergrad' AS Status,
		FirstName,
		LastName,
		EnrollmentDate,
		GraduationDate
FROM Students
WHERE GraduationDate IS NULL 
UNION
SELECT 'Graduated' AS Status,
		FirstName,
		LastName,
		EnrollmentDate,
		GraduationDate
FROM Students
WHERE GraduationDate IS NOT NULL
ORDER BY EnrollmentDate;


--Step 7
SELECT	DepartmentName,
		CourseID
FROM Departments
	LEFT JOIN Courses
		ON Departments.DepartmentID = Courses.DepartmentID
WHERE CourseID IS NULL;


--Step 8
SELECT	d1.DepartmentName AS InstructorDept,
		LastName,
		FirstName,
		CourseDescription,
		d2.DepartmentName AS CourseDept
FROM Departments AS d1
	JOIN Instructors AS i
		ON d1.DepartmentID = i.DepartmentID
	JOIN Courses AS c
		ON i.InstructorID = c.InstructorID
	JOIN Departments AS d2
		ON c.DepartmentID = d2.DepartmentID
WHERE c.DepartmentID != i.DepartmentID;