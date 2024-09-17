-- Assignment 1 - Nicholas Petersen

--Select databse
USE Cis111_MurachCollege;

--Query1
SELECT * 
FROM Courses;


--Query2
SELECT	CourseNumber, 
		CourseDescription, 
		CourseUnits 
FROM Courses 
ORDER BY CourseNumber ASC;


--Query 3
-- Using <= to 'M' in this situation did not include last names starting with M in the table
SELECT (LastName + ', ' + FirstName) AS FullName 
FROM Students
WHERE LastName >= 'A' AND LastName < 'N'
ORDER BY FullName ASC;
	

--Query 4
SELECT	LastName, 
		FirstName, 
		AnnualSalary
FROM Instructors
WHERE AnnualSalary >= 60000
ORDER BY AnnualSalary DESC;


--Query 5
SELECT	LastName, 
		FirstName, 
		HireDate
FROM Instructors
WHERE HireDate BETWEEN '2019-01-01' AND '2019-12-31'
ORDER BY HireDate ASC;


--Query 6
SELECT	FirstName, 
		LastName, 
		EnrollmentDate, 
		GETDATE() AS CurrentDate,
		DATEDIFF(month, EnrollmentDate, GETDATE()) AS MonthsAttended
FROM Students
ORDER BY MonthsAttended ASC;


--Query 7
SELECT TOP 20 PERCENT
		FirstName, 
		LastName, 	
		AnnualSalary
FROM Instructors
ORDER BY AnnualSalary DESC;


--Query 8
SELECT	LastName, 
		FirstName
FROM Students
WHERE LastName LIKE 'G%'
ORDER BY LastName ASC;


--Query 9
SELECT	LastName, 
		FirstName, 
		EnrollmentDate, 
		GraduationDate
FROM Students
WHERE	EnrollmentDate > '2019-12-01' 
		AND GraduationDate IS NULL;


--Query 10
SELECT	FullTimeCost,
		PerUnitCost,
		'12' AS Units,
		'12' * PerUnitCost AS TotalPerUnitCost,
		'12' * PerunitCost + FullTimeCost AS TotalTuition
FROM Tuition

