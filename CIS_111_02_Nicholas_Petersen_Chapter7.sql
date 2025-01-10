--CIS_111-02_Nicholas_Petersen_End_of_Chapter7

USE Cis111_GuitarShop


SELECT * INTO NPCategories FROM Categories;
SELECT * INTO NPProducts FROM Products;
SELECT * INTO NPCustomers FROM Customers;



--Step1
INSERT INTO NPCategories
VALUES ('Brass');


--Step 2
UPDATE NPCategories
SET CategoryName = 'Woodwinds'
WHERE CategoryID = 4;


--Step 3

DELETE NPCategories
WHERE CategoryID = 4;


--Step 4
--adds a new product into the Products table
INSERT INTO NPProducts(
	CategoryID, 
	ProductCode, 
	ProductName, 
	Description, 
	ListPrice, 
	DiscountPercent, 
	DateAdded)
VALUES (4, 
		'dgx_640', 
		'Yamaha DGX 640 88-Key Digital Piano',
		'Long Desctiption to come.',
		799.99,
		0,			--You can use DEFAULT here ordinarilly if a default value is defined on table creation. Does not work in copied tables.
		GETDATE()
		);


--Step 5
--changes the discount percent for the new product
UPDATE NPProducts
SET DiscountPercent = 35
WHERE ProductCode = 'dgx_640';


--Step 6
--deletes all procudes in associated with category 4 and then also the category
DELETE NPProducts
WHERE CategoryID = 4

DELETE	NPCategories
WHERE	CategoryID = 4;


--Step 7
--adds rick into the customers table
INSERT INTO NPCustomers(
	EmailAddress,
	Password,
	FirstName,
	LastName
	)
VALUES(
	'rick@raven.com',
	'',
	'Rick',
	'Raven'
	);


--Step 8
--changes just ricks password to 'secret'
UPDATE NPCustomers
SET Password = 'secret'
WHERE EmailAddress ='rick@raven.com';


--Step 9
--changes password column to 'reset' for all records
UPDATE NPCustomers
SET Password = 'reset';