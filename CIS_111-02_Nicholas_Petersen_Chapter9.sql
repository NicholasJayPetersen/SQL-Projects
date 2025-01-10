--CIS_111_02_Nicholas_Petersen_End_of_Chapter9

USE Cis111_GuitarShop;


--Step 1
SELECT	ListPrice, 
		DiscountPercent,
		ROUND(ListPrice * (DiscountPercent/100), 2) AS DiscountAmount
FROM	Products;


--Step 2
SELECT	OrderDate,
		YEAR(OrderDate) AS Year,
		DAY(OrderDate) AS DayOfMonth ,
		DATEADD(day, 30, OrderDate) AS PlusThirty 
FROM	Orders;


--Step 3
--Working from inside out, concatenate each part of the first the groups with a hyphen
--Then translate each number in the concatenated groups to an X
--Then finally concatenate the last four digits at the endwith another preceding hyphen
SELECT	CardNumber,
		LEN(CardNumber) AS CardNumLength,
		RIGHT(CardNumber, 4) AS LastFour,
		CONCAT(
			TRANSLATE(
				(CONCAT(
					LEFT(CardNumber, 4) ,'-' , 
					SUBSTRING(CardNumber, 5, 4) , '-' , 
					SUBSTRING(CardNumber, 9, 4))), 
				'0123456789', 'XXXXXXXXXX'), 
			'-', 
			RIGHT(CardNumber, 4)) AS HiddenCardNum
FROM	Orders;


--Step 4
--Use minute/1440 as decimal type instead of day for more precice ship times
--Convert OrderDate from datetime to string for string comparison in WHERE clause
SELECT	OrderID,
		OrderDate,
		DATEADD(day, 2, OrderDate) AS ApproxShipDate,
		ShipDate,
		DATEDIFF(day, OrderDate, ShipDate) AS DaysToShip
--		CAST(DATEDIFF(minute, OrderDate, ShipDate) AS decimal)/1440 AS DaysToShip
FROM	Orders
WHERE	CONVERT(varchar, OrderDate, 120) LIKE '2020-01-%';