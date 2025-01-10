--CIS_111-02_Nicholas_petersen_End_of_Chapter_6

USE Cis111_GuitarShop

--Step 1
-- Substitute the join for a where clause with a subquery using the same columns
SELECT DISTINCT CategoryName
FROM	Categories c
WHERE	CategoryName IN (SELECT CategoryName
						FROM Products p
						WHERE c.CategoryID = p.CategoryID)
ORDER BY CategoryName;


--Step2
--subquery finds the average list price of all products and compares to each product in outer query
SELECT	ProductName,
		ListPrice
FROM	Products AS p
WHERE	ListPrice > (SELECT AVG(ListPrice)
					FROM Products AS psub)
ORDER BY ListPrice DESC;


--Step 3
--subquery finds all category IDs that are tied to a product and removes them from the outer query using NOT IN. 
--This leaves only categories without a product.
SELECT	CategoryName
FROM	Categories c
WHERE	CategoryName NOT IN	(SELECT	CategoryName
							FROM	Products p
							WHERE	c.CategoryID = p.CategoryID);


--Step 4
--Join the initial query as a subquery with the MAX function to find the highest cost order
SELECT	EmailAddress, 
		MAX(ItemPrice *Quantity) AS LargestOrder
FROM OrderItems JOIN 
				(SELECT EmailAddress, OrderItems.OrderID, SUM(ItemPrice * Quantity) AS OrderTotal
				FROM Customers
				JOIN Orders ON Customers.CustomerID = Orders.OrderID
				JOIN OrderItems ON Orders.OrderID = OrderItems.OrderID
				GROUP BY EmailAddress, OrderItems.OrderID) AS OrderTotal ON OrderItems.OrderID = OrderTotal.OrderID
GROUP BY EmailAddress;


--Step 5
--Inner query will take the discount percent column and group all the common discounts together, then check for groupings with only one item. Any groupings more than one will be excluded.
--Outer query will then tak ethe product name and discount percent and filter by the results given from the subquery
SELECT	ProductName, 
		DiscountPercent
FROM	Products
WHERE	DiscountPercent IN (
						SELECT DiscountPercent
						FROM Products
						GROUP BY DiscountPercent
						HAVING COUNT(*) = 1
)
ORDER BY ProductName;

--Step 6
--Correlated suquery takes the minimum date (oldest) from each customer. 
--The query will run line by line for each record in the outer query to find the oldest.
SELECT	EmailAddress,
		OrderID,
		OrderDate
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE OrderDate =(SELECT (MIN(OrderDate))
				 FROM Orders AS Orders_sub
				 WHERE Orders.CustomerID = Orders_sub.CustomerID
				 );