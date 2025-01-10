--CIS_111_02_Nicholas_Petersen_End_of_Chapter8

USE Cis111_GuitarShop;

--Step 1 (first part)
SELECT	ListPrice,
		CAST(ListPrice AS dec(8,1)) AS Cast1ListPrice,
		CONVERT(int, ListPrice, 8) ConvertListPrice,
		CAST(ListPrice AS int) Cast2ListPrice
FROM	Products;

--Step 2
SELECT	DateAdded,
		CAST(DateAdded AS date) AS DateOnly,
		CAST(DateAdded AS time(2)) AS TimeOnly,
		CAST(CONVERT(varchar, dateAdded, 1) AS char(5)) AS MonthDayOnly 
FROM	Products;

--Step 3
SELECT	CONVERT(varchar, OrderDate, 101) AS MonthDayYear,
		CONVERT(varchar, OrderDate, 100) AS TwelveHourClock,
		CONVERT(varchar, OrderDate, 114) AS TwentyFourHourClock
FROM	Orders;
