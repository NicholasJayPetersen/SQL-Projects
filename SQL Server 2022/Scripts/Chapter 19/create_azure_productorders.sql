DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS OrderDetails;
DROP TABLE IF EXISTS Items;
DROP TABLE IF EXISTS Customers;

-- create the Customers table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Customers(
	CustID int IDENTITY(1,1) NOT NULL,
	CustFirstName nvarchar(50) NULL,
	CustLastName nvarchar(50) NOT NULL,
	CustAddress nvarchar(255) NOT NULL,
	CustCity nvarchar(50) NOT NULL,
	CustState nvarchar(20) NOT NULL,
	CustZip nvarchar(20) NOT NULL,
	CustPhone nvarchar(30) NOT NULL,
	CustFax nvarchar(30) NULL,
    CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
    (
	    CustID ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
) 
GO

-- create the Items table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Items(
	ItemID int NOT NULL,
	Title nvarchar(50) NOT NULL,
	Artist nvarchar(50) NOT NULL,
	UnitPrice money NOT NULL
)
GO

-- create the OrderDetails table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE OrderDetails (
	OrderID int NOT NULL,
	ItemID int NOT NULL,
	Quantity smallint NOT NULL
) 
GO

-- create the Orders table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Orders (
	OrderID int NOT NULL,
	CustID int NOT NULL,
	OrderDate datetime NOT NULL,
	ShippedDate datetime NULL
) 
GO

-- insert the data into the tables
SET IDENTITY_INSERT Customers ON 
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (1, N'Korah', N'Blanca', N'1555 W Lane Ave', N'Columbus', N'OH', N'43221', N'6145554435', N'6145553928')
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (2, N'Yash', N'Randall', N'11 E Rancho Madera Rd', N'Madison', N'WI', N'53707', N'2095551205', N'2095552262')
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (3, N'Johnathon', N'Millerton', N'60 Madison Ave', N'New York', N'NY', N'10010', N'2125554800', NULL)
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (4, N'Mikayla', N'Damion', N'2021 K Street Nw', N'Washington', N'DC', N'20006', N'2025555561', NULL)
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (5, N'Kendall', N'Mayte', N'4775 E Miami River Rd', N'Cleves', N'OH', N'45002', N'5135553043', NULL)
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (6, N'Kaitlin', N'Hostlery', N'3250 Spring Grove Ave', N'Cincinnati', N'OH', N'45225', N'8005551957', N'8005552826')
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (7, N'Derek', N'Chaddick', N'9022 E Merchant Wy', N'Fairfield', N'IA', N'52556', N'5155556130', NULL)
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (8, N'Deborah', N'Damien', N'415 E Olive Ave', N'Fresno', N'CA', N'93728', N'5595558060', NULL)
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (9, N'Karina', N'Lacy', N'882 W Easton Wy', N'Los Angeles', N'CA', N'90084', N'8005557000', NULL)
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (10, N'Kurt', N'Nickalus', N'28210 N Avenue Stanford', N'Valencia', N'CA', N'91355', N'8055550584', N'8055556689')
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (11, N'Kelsey', N'Eulalia', N'7833 N Ridge Rd', N'Sacramento', N'CA', N'95887', N'2095557500', N'2095551302')
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (12, N'Anders', N'Rohansen', N'12345 E 67th Ave NW', N'Takoma Park', N'MD', N'24512', N'3385556772', NULL)
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (13, N'Thalia', N'Neftaly', N'2508 W Shaw Ave', N'Fresno', N'CA', N'93711', N'5595556245', NULL)
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (14, N'Gonzalo', N'Keeton', N'12 Daniel Road', N'Fairfield', N'NJ', N'07004', N'2015559742', NULL)
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (15, N'Ania', N'Irvin', N'1099 N Farcourt St', N'Orange', N'CA', N'92807', N'7145559000', NULL)
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (16, N'Dakota', N'Baylee', N'1033 N Sycamore Ave.', N'Los Angeles', N'CA', N'90038', N'2135554322', NULL)
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (17, N'Samuel', N'Jacobsen', N'3433 E Widget Ave', N'Palo Alto', N'CA', N'92711', N'4155553434', NULL)
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (18, N'Justin', N'Javen', N'828 S Broadway', N'Tarrytown', N'NY', N'10591', N'8005550037', NULL)
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (19, N'Kyle', N'Marissa', N'789 E Mercy Ave', N'Phoenix', N'AZ', N'85038', N'9475553900', NULL)
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (20, N'Erick', N'Kaleigh', N'Five Lakepointe Plaza, Ste 500', N'Charlotte', N'NC', N'28217', N'7045553500', NULL)
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (21, N'Marvin', N'Quintin', N'2677 Industrial Circle Dr', N'Columbus', N'OH', N'43260', N'6145558600', N'6145557580')
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (22, N'Rashad', N'Holbrooke', N'3467 W Shaw Ave #103', N'Fresno', N'CA', N'93711', N'5595558625', N'5595558495')
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (23, N'Trisha', N'Anum', N'627 Aviation Way', N'Manhatttan Beach', N'CA', N'90266', N'3105552732', NULL)
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (24, N'Julian', N'Carson', N'372 San Quentin', N'San Francisco', N'CA', N'94161', N'6175550700', NULL)
INSERT Customers (CustID, CustFirstName, CustLastName, CustAddress, CustCity, CustState, CustZip, CustPhone, CustFax) VALUES (25, N'Kirsten', N'Story', N'2401 Wisconsin Ave NW', N'Washington', N'DC', N'20559', N'2065559115', NULL)
SET IDENTITY_INSERT Customers OFF
INSERT Items (ItemID, Title, Artist, UnitPrice) VALUES (1, N'Umami In Concert', N'Umami', 17.9500)
INSERT Items (ItemID, Title, Artist, UnitPrice) VALUES (2, N'Race Car Sounds', N'The Ubernerds', 13.0000)
INSERT Items (ItemID, Title, Artist, UnitPrice) VALUES (3, N'No Rest For The Weary', N'No Rest For The Weary', 16.9500)
INSERT Items (ItemID, Title, Artist, UnitPrice) VALUES (4, N'More Songs About Structures and Comestibles', N'No Rest For The Weary', 17.9500)
INSERT Items (ItemID, Title, Artist, UnitPrice) VALUES (5, N'On The Road With Burt Ruggles', N'Burt Ruggles', 17.5000)
INSERT Items (ItemID, Title, Artist, UnitPrice) VALUES (6, N'No Fixed Address', N'Sewed the Vest Pocket', 16.9500)
INSERT Items (ItemID, Title, Artist, UnitPrice) VALUES (7, N'Rude Noises', N'Jess & Odie', 13.0000)
INSERT Items (ItemID, Title, Artist, UnitPrice) VALUES (8, N'Burt Ruggles: An Intimate Portrait', N'Burt Ruggles', 17.9500)
INSERT Items (ItemID, Title, Artist, UnitPrice) VALUES (9, N'Zone Out With Umami', N'Umami', 16.9500)
INSERT Items (ItemID, Title, Artist, UnitPrice) VALUES (10, N'Etcetera', N'Onn & Onn', 17.0000)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (381, 1, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (601, 9, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (442, 1, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (523, 9, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (630, 5, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (778, 1, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (693, 10, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (118, 1, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (264, 7, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (607, 10, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (624, 7, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (658, 1, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (800, 5, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (158, 3, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (321, 10, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (687, 6, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (827, 6, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (144, 3, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (264, 8, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (479, 1, 2)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (630, 6, 2)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (796, 5, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (97, 4, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (601, 5, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (773, 10, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (800, 1, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (29, 10, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (70, 1, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (97, 8, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (165, 4, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (180, 4, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (231, 10, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (392, 8, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (413, 10, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (491, 6, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (494, 2, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (606, 8, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (607, 3, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (651, 3, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (703, 4, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (796, 2, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (802, 2, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (802, 3, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (824, 7, 2)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (829, 1, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (550, 4, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (796, 7, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (829, 2, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (693, 6, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (29, 3, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (32, 7, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (242, 1, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (298, 1, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (479, 4, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (548, 9, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (627, 9, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (778, 3, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (687, 8, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (19, 5, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (89, 4, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (242, 6, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (264, 4, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (550, 1, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (631, 10, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (693, 7, 3)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (824, 3, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (829, 5, 1)
INSERT OrderDetails (OrderID, ItemID, Quantity) VALUES (829, 9, 1)
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (19, 1, CAST(N'2021-04-23T00:00:00.000' AS DateTime), CAST(N'2021-04-28T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (29, 8, CAST(N'2021-05-05T00:00:00.000' AS DateTime), CAST(N'2021-05-11T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (32, 11, CAST(N'2021-05-10T00:00:00.000' AS DateTime), CAST(N'2021-05-13T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (45, 2, CAST(N'2021-05-25T00:00:00.000' AS DateTime), CAST(N'2021-05-30T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (70, 10, CAST(N'2021-06-28T00:00:00.000' AS DateTime), CAST(N'2021-07-07T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (89, 22, CAST(N'2021-07-20T00:00:00.000' AS DateTime), CAST(N'2021-07-22T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (97, 20, CAST(N'2021-07-29T00:00:00.000' AS DateTime), CAST(N'2021-08-02T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (118, 3, CAST(N'2021-08-24T00:00:00.000' AS DateTime), CAST(N'2021-08-28T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (144, 17, CAST(N'2021-09-21T00:00:00.000' AS DateTime), CAST(N'2021-09-29T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (158, 9, CAST(N'2021-10-04T00:00:00.000' AS DateTime), CAST(N'2021-10-20T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (165, 14, CAST(N'2021-10-11T00:00:00.000' AS DateTime), CAST(N'2021-10-13T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (180, 24, CAST(N'2021-10-25T00:00:00.000' AS DateTime), CAST(N'2021-11-30T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (231, 15, CAST(N'2021-12-14T00:00:00.000' AS DateTime), CAST(N'2021-12-22T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (242, 23, CAST(N'2021-12-24T00:00:00.000' AS DateTime), CAST(N'2022-01-06T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (264, 9, CAST(N'2022-01-15T00:00:00.000' AS DateTime), CAST(N'2022-01-18T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (298, 18, CAST(N'2022-02-18T00:00:00.000' AS DateTime), CAST(N'2022-03-22T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (321, 2, CAST(N'2022-03-09T00:00:00.000' AS DateTime), CAST(N'2022-04-05T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (381, 7, CAST(N'2022-05-08T00:00:00.000' AS DateTime), CAST(N'2022-05-16T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (392, 19, CAST(N'2022-05-16T00:00:00.000' AS DateTime), CAST(N'2022-05-23T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (413, 17, CAST(N'2022-06-05T00:00:00.000' AS DateTime), CAST(N'2022-07-11T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (442, 5, CAST(N'2022-06-28T00:00:00.000' AS DateTime), CAST(N'2022-07-03T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (479, 1, CAST(N'2022-07-30T00:00:00.000' AS DateTime), CAST(N'2022-09-03T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (491, 16, CAST(N'2022-08-08T00:00:00.000' AS DateTime), CAST(N'2022-08-14T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (494, 4, CAST(N'2022-08-10T00:00:00.000' AS DateTime), CAST(N'2022-08-14T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (523, 3, CAST(N'2022-09-07T00:00:00.000' AS DateTime), CAST(N'2022-09-15T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (548, 2, CAST(N'2022-09-22T00:00:00.000' AS DateTime), CAST(N'2022-10-18T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (550, 17, CAST(N'2022-09-23T00:00:00.000' AS DateTime), CAST(N'2022-10-03T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (601, 16, CAST(N'2022-10-21T00:00:00.000' AS DateTime), CAST(N'2022-10-27T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (606, 6, CAST(N'2022-10-25T00:00:00.000' AS DateTime), CAST(N'2022-11-02T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (607, 20, CAST(N'2022-10-25T00:00:00.000' AS DateTime), CAST(N'2022-11-04T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (624, 2, CAST(N'2022-11-04T00:00:00.000' AS DateTime), CAST(N'2022-11-09T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (627, 17, CAST(N'2022-11-05T00:00:00.000' AS DateTime), CAST(N'2022-11-10T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (630, 20, CAST(N'2022-11-08T00:00:00.000' AS DateTime), CAST(N'2022-11-18T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (631, 21, CAST(N'2022-11-09T00:00:00.000' AS DateTime), CAST(N'2022-11-11T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (651, 12, CAST(N'2022-11-19T00:00:00.000' AS DateTime), CAST(N'2022-12-02T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (658, 12, CAST(N'2022-11-23T00:00:00.000' AS DateTime), CAST(N'2022-12-02T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (687, 17, CAST(N'2022-12-05T00:00:00.000' AS DateTime), CAST(N'2022-12-08T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (693, 9, CAST(N'2022-12-07T00:00:00.000' AS DateTime), CAST(N'2022-12-19T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (703, 19, CAST(N'2022-12-12T00:00:00.000' AS DateTime), CAST(N'2022-12-19T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (773, 25, CAST(N'2023-01-11T00:00:00.000' AS DateTime), CAST(N'2023-01-13T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (778, 13, CAST(N'2023-01-12T00:00:00.000' AS DateTime), CAST(N'2023-01-21T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (796, 17, CAST(N'2023-01-19T00:00:00.000' AS DateTime), CAST(N'2023-01-26T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (800, 19, CAST(N'2023-01-21T00:00:00.000' AS DateTime), CAST(N'2023-01-28T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (802, 2, CAST(N'2023-01-21T00:00:00.000' AS DateTime), CAST(N'2023-01-31T00:00:00.000' AS DateTime))
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (824, 1, CAST(N'2023-02-01T00:00:00.000' AS DateTime), NULL)
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (827, 18, CAST(N'2023-02-02T00:00:00.000' AS DateTime), NULL)
INSERT Orders (OrderID, CustID, OrderDate, ShippedDate) VALUES (829, 9, CAST(N'2023-02-02T00:00:00.000' AS DateTime), NULL)
