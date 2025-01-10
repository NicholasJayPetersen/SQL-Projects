--CIS_111-02_Nicholas_Petersen_Assignment5

USE Cis111_MurachCollege;

--Step 1
SELECT	AnnualSalary/12 AS MonthlySalary,
		CAST(AnnualSalary AS decimal(6,1)) AS DecimalSalary,
		CONVERT(int, AnnualSalary) AS ConvertIntSalary,
		CAST(AnnualSalary AS int) AS CastIntSalary
FROM	Instructors;


--Step 2
SELECT	EnrollmentDate,
		CAST(EnrollmentDate AS date) AS EnrollmentDay,
		CAST(EnrollmentDate AS time) AS EnrollmentTime,
		CAST(YEAR(EnrollmentDate) AS varchar(4)) + '-' + CAST(MONTH(EnrollmentDate) AS varchar(2)) AS YearMonth
FROM	Students;


--Step 3
SELECT	CONVERT(varchar, EnrollmentDate, 110) AS MMDDYYYY,
		CONVERT(varchar, EnrollmentDate, 100) AS DateAndTime,
		CONVERT(varchar, CAST(EnrollmentDate AS Datetime2(3)), 114) AS TimeWithMS
FROM	Students;


--Step 4
SELECT	AnnualSalary,
		AnnualSalary/12 AS MonthlySalary,
		ROUND(AnnualSalary/12, 2) AS MonthlySalaryRounded
FROM	Instructors;


--Step 5
SELECT	EnrollmentDate,
		LEFT(EnrollmentDate, 4) AS EnrollmentYear,
		SUBSTRING(CAST(EnrollmentDate AS varchar), 6 ,2) AS EnrollmentMonth,
		CAST(DATEADD(year, 4, EnrollmentDate) AS varchar(4)) AS GraduationYear
FROM	Students;


--Step 6
SELECT	DepartmentName,
		CourseNumber,
		FirstName,
		LastName,
		UPPER(LEFT(DepartmentName, 3)) + 
			CAST(CourseNumber AS char(5)) + 
			IIF(FirstName IS NULL, '', FirstName) + 
			LastName AS AllTogether
FROM	Departments AS d
JOIN	Courses AS c 
			ON d.DepartmentID = c.DepartmentID
JOIN	Instructors AS i 
			ON c.InstructorID = i.InstructorID;


--Step 7
SELECT	FirstName,
		LastName,
		EnrollmentDate,
		GraduationDate,
		DATEDIFF(month, EnrollmentDate, GraduationDate) AS MonthsAttended
FROM	Students
WHERE GraduationDate IS NOT NULL;