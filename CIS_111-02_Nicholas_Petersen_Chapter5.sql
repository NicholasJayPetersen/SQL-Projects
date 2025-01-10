--CIS_111-02_Nicholas_Petersen_End_Of_Chapter_5

USE Cis111_GuitarShop

--Step 1
SELECT	COUNT(OrderID) AS NumberOfOrders,
		SUM(TaxAmount) AS TotalTax
FROM Orders;


--Step 2
SELECT	CategoryName,
		COUNT(ProductID) AS NumberOfProducts,
		MAX(ListPrice) AS MostExpensive
FROM Categories
		JOIN Products
			ON Categories.CategoryID = Products.CategoryID
GROUP BY CategoryName;


--Step 3
SELECT	EmailAddress,
		SUM(ItemPrice * Quantity) AS TotalPrice,
		SUM(DiscountAmount * Quantity) AS TotalDiscount
FROM Customers
	JOIN Orders
		ON Customers.CustomerID = Orders.CustomerID
			JOIN OrderItems
				ON Orders.OrderID = OrderItems.OrderID
GROUP BY EmailAddress
ORDER BY TotalPrice DESC;


--Step 4
SELECT	EmailAddress,
		COUNT(Orders.OrderID) AS NumberOfOrders,
		SUM((ItemPrice - DiscountAmount) * Quantity) AS TotalAmount
FROM Customers
		JOIN Orders
			ON Customers.CustomerID = Orders.CustomerID
				JOIN OrderItems
					ON Orders.OrderID = OrderItems.OrderID
GROUP BY EmailAddress
HAVING COUNT(Orders.OrderID) > 1
ORDER BY TotalAmount DESC;


--Step 5
SELECT	EmailAddress,
		COUNT(Orders.OrderID) AS NumberOfOrders,
		SUM((ItemPrice - DiscountAmount) * Quantity) AS TotalAmount
FROM Customers
		JOIN Orders
			ON Customers.CustomerID = Orders.CustomerID
				JOIN OrderItems
					ON Orders.OrderID = OrderItems.OrderID
WHERE ItemPrice > 400
GROUP BY EmailAddress
HAVING COUNT(Orders.OrderID) > 1
ORDER BY TotalAmount DESC;


--Step 6
SELECT	ProductName,
		SUM((ItemPrice - DiscountAmount) * Quantity) AS TotalAmount
FROM Products
		JOIN OrderItems
			ON Products.ProductID = OrderItems.ProductID
GROUP BY ProductName WITH ROLLUP;


--Step 7
SELECT	EmailAddress,
		COUNT(DISTINCT ItemID) AS UniqueItems
FROM Customers
		JOIN Orders
			ON Customers.CustomerID = Orders.CustomerID
				JOIN OrderItems
					ON Orders.OrderID = OrderItems.OrderID
GROUP BY EmailAddress
HAVING COUNT(DISTINCT ItemID) > 1;
