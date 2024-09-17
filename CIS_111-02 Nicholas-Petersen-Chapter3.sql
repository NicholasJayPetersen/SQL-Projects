--CIS 111-02 - Nicholas Petersen
--End of chatper 3 assignment

USE Cis111_GuitarShop;


--Step 1
SELECT	ProductCode,
		ProductName,
		ListPrice,
		DiscountPercent
FROM Products
ORDER BY ListPrice DESC;


--Step 2
-- Using 'Zz' to include last names with "Z" in the results. Using just 'Z' will not work. 
SELECT	LastName + ', ' + FirstName AS FullName
FROM Customers
WHERE LastName BETWEEN 'M' AND 'Zz'
ORDER BY LastName ASC;


--Step 3
SELECT	ProductName, 
		ListPrice, 
		DateAdded
FROM Products
WHERE ListPrice > 500 AND ListPrice < 2000
ORDER BY DateAdded DESC;


--STEP 4
--Since working with money need to convert alias, otherwise too many decimal places.
SELECT ProductName,
       ListPrice,
       DiscountPercent,
       CONVERT(money, ListPrice * (DiscountPercent / 100)) AS DiscountAmount,
       CONVERT(money, ListPrice - (ListPrice * (DiscountPercent / 100))) AS DiscountPrice
FROM Products
ORDER BY DiscountPrice DESC;


--Step 5
/*This one took me forever to figure out. I ended up learning subqueries to get the WHERE 
clause to work initially, since I couldnt refrence ItemTotal in the same query. Then it 
dawned on me that I could just use an expression the WHERE clause, just like in the SELECT...
*/
SELECT	ItemID,
		ItemPrice,
		DiscountAmount,
		Quantity,
		ItemPrice * Quantity AS PriceTotal,
		DiscountAmount * Quantity AS DiscountTotal,
		(ItemPrice - DiscountAmount) * Quantity AS ItemTotal
FROM OrderItems
WHERE (ItemPrice - DiscountAmount) * Quantity > 500
ORDER BY ItemTotal DESC;


--Step 6
SELECT	OrderID,
		OrderDate,
		ShipDate
FROM Orders
WHERE ShipDate IS NULL;


--Step 7
SELECT	100 AS Price,
		.07 AS TaxRate,
		100 * 0.07 AS TaxAmount,
		100 + (100 * 0.07) AS Total