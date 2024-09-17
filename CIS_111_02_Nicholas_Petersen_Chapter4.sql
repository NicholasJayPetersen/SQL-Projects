--CIS-111-02 
--Nicholas Petersen
--End of Chapter 4


USE Cis111_GuitarShop;



--STEP 1
SELECT	CategoryName, 
		ProductName, 
		ListPrice
FROM Categories c
	JOIN Products p
		ON c.CategoryID = p.CategoryID
ORDER BY CategoryName, 
		 ProductName ASC;


--STEP 2
SELECT	FirstName, 
		LastName, 
		Line1, 
		City, 
		State, 
		ZipCode
FROM Customers c
	JOIN Addresses a
		ON c.CustomerID = a.CustomerID
WHERE EmailAddress = 'allan.sherwood@yahoo.com';


--STEP 3
SELECT FirstName, LastName, Line1, City, State, ZipCode
FROM Customers c
	JOIN Addresses a
		ON c.ShippingAddressID = a.AddressID;


--STEP 4
SELECT	LastName,
		FirstName,
		OrderDate,
		ProductName,
		ItemPrice,
		DiscountAmount,
		Quantity
FROM Customers c
	JOIN Orders o
		ON c.CustomerID = o.CustomerID
		JOIN OrderItems oi
			ON o.OrderID = oi.OrderID
			JOIN Products p
				ON oi.ProductID = p.ProductID
ORDER BY LastName,
		OrderDate,
		ProductName;


--STEP 5
SELECT p1.ProductName,
		p1.ListPrice
FROM Products p1
	JOIN Products p2
		ON p1.ProductID != p2.ProductID
		AND p1.ListPrice = p2.ListPrice;


--STEP 6
SELECT	CategoryName,
		ProductID
FROM Products p
	RIGHT JOIN Categories c
		ON c.CategoryID = p.CategoryID
WHERE ProductID IS NULL;


--STEP 7
SELECT	OrderID,
		OrderDate,
		'Shipped' AS ShipStatus
FROM Orders
WHERE ShipDate IS NOT NULL
UNION
SELECT	OrderID,
		OrderDate,
		'Not Shipped' AS ShipStatus
FROM Orders
WHERE ShipDate IS NULL
ORDER BY OrderDate;