-- CIS 111-02 - Nicholas Petersen

--Step 8
USE Cis111_GuitarShop;

--Step 9 and 10 (deleted and added the 'e' back)
SELECT ProductName FROM Products;

--Step 11
SELECT COUNT(*) AS NumberOfProducts 
FROM Products 

--Step 12
SELECT COUNT(*) AS NumberOfProducts, 
	MAX(ListPrice) AS MostExpensiveProduct, 
	MIN(DateAdded) AS OldestProduct 
FROM Products

--Step 13
SELECT ProductName, ListPrice, DateAdded 
FROM Products 
	ORDER BY ProductName; 

--Step 14 (All together now!)
SELECT ProductName, ListPrice, DateAdded 
FROM Products 
	ORDER BY ProductName; 

SELECT COUNT(*) AS NumberOfProducts, 
	MAX(ListPrice) AS MostExpensiveProduct, 
	MIN(DateAdded) AS OldestProduct 
FROM Products; 