DROP TABLE IF EXISTS ActiveInvoices;
DROP TABLE IF EXISTS APFlat;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS DateSample;
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS EmployeesOld;
DROP TABLE IF EXISTS EmployeesTest;
DROP TABLE IF EXISTS Investors;
DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS NullSample;
DROP TABLE IF EXISTS PaidInvoices;
DROP TABLE IF EXISTS Projects;
DROP TABLE IF EXISTS RealSample;
DROP TABLE IF EXISTS SalesTotals;
DROP TABLE IF EXISTS SalesReps;
DROP TABLE IF EXISTS Sample;
DROP TABLE IF EXISTS StringSample;
DROP TABLE IF EXISTS Vendors;
DROP TABLE IF EXISTS EmployeeSales;


-- create the ActiveInvoices table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE ActiveInvoices(
	InvoiceID int IDENTITY(1,1) NOT NULL,
	VendorID int NOT NULL,
	InvoiceNumber varchar(50) NOT NULL,
	InvoiceDate date NOT NULL,
	InvoiceTotal money NOT NULL,
	PaymentTotal money NOT NULL,
	CreditTotal money NOT NULL,
	TermsID int NOT NULL,
	InvoiceDueDate date NOT NULL,
	PaymentDate date NULL
) 
GO

-- create the APFlat table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE APFlat (
	VendorName varchar(50) NOT NULL,
	InvoiceNumber varchar(50) NOT NULL,
	ItemDescription1 varchar(100) NULL,
	ItemDescription2 varchar(100) NULL,
	ItemDescription3 varchar(100) NULL,
	ItemDescription4 varchar(100) NULL
)
GO

-- create the Customers table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Customers(
	CustID int IDENTITY(1,1) NOT NULL,
	CustomerLast nvarchar(30) NULL,
	CustomerFirst nvarchar(30) NULL,
	CustAddr nvarchar(60) NULL,
	CustCity nvarchar(15) NULL,
	CustState nvarchar(15) NULL,
	CustZip nvarchar(10) NULL,
	CustPhone nvarchar(24) NULL,
    CONSTRAINT PK_Customers PRIMARY KEY CLUSTERED 
    (
	    CustID ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

-- create the DateSample table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE DateSample (
	ID int IDENTITY(1,1) NOT NULL,
	StartDate datetime NULL
)
GO

-- create the Departments table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Departments (
	DeptNo int IDENTITY(1,1) NOT NULL,
	DeptName varchar(50) NOT NULL,
    CONSTRAINT PK_Departments PRIMARY KEY CLUSTERED 
    (
	    DeptNo ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

-- create the Employees table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Employees (
	EmployeeID int IDENTITY(1,1) NOT NULL,
	LastName varchar(35) NOT NULL,
	FirstName varchar(35) NOT NULL,
	DeptNo int NOT NULL,
	ManagerID int NULL
) 
GO

-- create the EmployeesOld table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE EmployeesOld (
	EmployeeID int IDENTITY(1,1) NOT NULL,
	LastName varchar(35) NOT NULL,
	FirstName varchar(35) NOT NULL,
	DeptNo int NOT NULL,
    CONSTRAINT PK_Employees PRIMARY KEY CLUSTERED 
    (
	    EmployeeID ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)
GO

-- create the EmployeesTest table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE EmployeesTest (
	EmployeeID int IDENTITY(1,1) NOT NULL,
	LastName varchar(35) NOT NULL,
	FirstName varchar(35) NOT NULL,
	DeptNo int NOT NULL,
	ManagerID int NULL
) 
GO

-- create the Investors table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Investors (
	InvestorID int IDENTITY(1,1) NOT NULL,
	LastName varchar(50) NULL,
	FirstName varchar(50) NULL,
	Address varchar(50) NULL,
	City varchar(50) NULL,
	State char(2) NULL,
	ZipCode char(10) NULL,
	Phone char(20) NULL,
	Investments money NULL,
	NetGain money NULL,
    CONSTRAINT PK_Investors PRIMARY KEY CLUSTERED 
    (
	    [InvestorID] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
)
GO

-- create the Invoices table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Invoices (
	InvoiceID int NOT NULL,
	InvoiceNumber int NULL,
	InvoiceTotal smallmoney NULL
)
GO

-- create the NullSample table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE NullSample (
	InvoiceID int IDENTITY(1,1) NOT NULL,
	InvoiceTotal money NULL
)
GO

-- create the PaidInvoices table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE PaidInvoices (
	InvoiceID int IDENTITY(1,1) NOT NULL,
	VendorID int NOT NULL,
	InvoiceNumber varchar(50) NOT NULL,
	InvoiceDate date NOT NULL,
	InvoiceTotal money NOT NULL,
	PaymentTotal money NOT NULL,
	CreditTotal money NOT NULL,
	TermsID int NOT NULL,
	InvoiceDueDate date NOT NULL,
	PaymentDate date NULL
)
GO

-- create the Projects table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Projects (
	ProjectNo char(5) NOT NULL,
	EmployeeID int NOT NULL
) 
GO

-- create the RealSample table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE RealSample(
	ID int IDENTITY(1,1) NOT NULL,
	R float NULL
)
GO

-- create the SalesReps table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE SalesReps (
	RepID int IDENTITY(1,1) NOT NULL,
	RepFirstName varchar(50) NOT NULL,
	RepLastName varchar(50) NOT NULL,
    CONSTRAINT PK_SalesReps PRIMARY KEY CLUSTERED 
    (
	    RepID ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
)
GO

-- create the SalesTotals table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE SalesTotals (
	RepID int NOT NULL,
	SalesYear char(4) NOT NULL,
	SalesTotal money NOT NULL,
    CONSTRAINT PK_SalesTotals PRIMARY KEY CLUSTERED 
    (
	    RepID ASC,
	    SalesYear ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
) 
GO

-- create the Sample table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Sample (
	ID int IDENTITY(1,1) NOT NULL,
	Number int NULL,
	Color char(10) NOT NULL
)
GO

-- create the StringSample table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE StringSample (
	ID char(3) NULL,
	Name varchar(25) NULL,
	AltID char(3) NULL
) 
GO

-- create the Vendors table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendors](
	VendorID int IDENTITY(1,1) NOT NULL,
	VendorName nvarchar(50) NOT NULL,
	VendorAddress1 nvarchar(50) NULL,
	VendorAddress2 nvarchar(50) NULL,
	VendorCity nvarchar(50) NOT NULL,
	VendorState nchar(2) NOT NULL,
	VendorZipCode nvarchar(10) NOT NULL,
	VendorContactLName nvarchar(35) NULL,
	VendorContactFName nvarchar(35) NULL,
	VendorPhone nvarchar(50) NULL,
	TermsID int NOT NULL,
	AccountNo int NOT NULL,
	LastTranDate date NULL,
	YTDPurchases money NULL,
	YTDReturns money NULL,
	LastYTDPurchases money NULL,
	LastYTDReturns money NULL,
    CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED 
    (
	    VendorID ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
) 

-- create the EmployeeSales table
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSales](
	[EmployeeID] [int] NOT NULL,
	[EnterpriseSales] [money] NULL,
	[DirectSales] [money] NULL
) ON [PRIMARY]
GO

-- insert the data into the tables

GO
INSERT EmployeeSales (EmployeeID, EnterpriseSales, DirectSales) VALUES (1, 10000.0000, 7500.0000)
INSERT EmployeeSales (EmployeeID, EnterpriseSales, DirectSales) VALUES (2, 12000.0000, 3000.0000)
INSERT EmployeeSales (EmployeeID, EnterpriseSales, DirectSales) VALUES (3, NULL, 5000.0000)
INSERT EmployeeSales (EmployeeID, EnterpriseSales, DirectSales) VALUES (4, 8000.0000, 8000.0000)

GO
SET IDENTITY_INSERT ActiveInvoices ON 
INSERT ActiveInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (89, 72, N'39104', CAST(N'2023-01-10' AS Date), 85.3100, 0.0000, 0.0000, 3, CAST(N'2023-02-09' AS Date), NULL)
INSERT ActiveInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (94, 123, N'963253264', CAST(N'2023-01-18' AS Date), 52.2500, 0.0000, 0.0000, 3, CAST(N'2023-02-17' AS Date), NULL)
INSERT ActiveInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (98, 83, N'31361833', CAST(N'2023-01-21' AS Date), 579.4200, 0.0000, 0.0000, 2, CAST(N'2023-02-10' AS Date), NULL)
INSERT ActiveInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (99, 123, N'263253268', CAST(N'2023-01-21' AS Date), 59.9700, 0.0000, 0.0000, 3, CAST(N'2023-02-20' AS Date), NULL)
INSERT ActiveInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (100, 123, N'263253270', CAST(N'2023-01-22' AS Date), 67.9200, 0.0000, 0.0000, 3, CAST(N'2023-02-21' AS Date), NULL)
INSERT ActiveInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (101, 123, N'263253273', CAST(N'2023-01-22' AS Date), 30.7500, 0.0000, 0.0000, 3, CAST(N'2023-02-21' AS Date), NULL)
INSERT ActiveInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (102, 110, N'P-0608', CAST(N'2023-01-23' AS Date), 20551.1800, 0.0000, 1200.0000, 3, CAST(N'2023-02-22' AS Date), NULL)
INSERT ActiveInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (105, 106, N'9982771', CAST(N'2023-01-24' AS Date), 503.2000, 0.0000, 0.0000, 3, CAST(N'2023-02-23' AS Date), NULL)
INSERT ActiveInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (110, 80, N'134116', CAST(N'2023-01-28' AS Date), 90.3600, 0.0000, 0.0000, 2, CAST(N'2023-02-17' AS Date), NULL)
INSERT ActiveInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (112, 110, N'0-2436', CAST(N'2023-01-31' AS Date), 10976.0600, 0.0000, 0.0000, 3, CAST(N'2023-03-01' AS Date), NULL)
INSERT ActiveInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (113, 37, N'547480102', CAST(N'2023-02-01' AS Date), 224.0000, 0.0000, 0.0000, 3, CAST(N'2023-03-01' AS Date), NULL)
SET IDENTITY_INSERT ActiveInvoices OFF
INSERT APFlat (VendorName, InvoiceNumber, ItemDescription1, ItemDescription2, ItemDescription3, ItemDescription4) VALUES (N'Wells Fargo Bank', N'112897', N'DiCicco''s', N'Kinko''s', N'Office Max', N'Publishers Marketing')
INSERT APFlat (VendorName, InvoiceNumber, ItemDescription1, ItemDescription2, ItemDescription3, ItemDescription4) VALUES (N'Zylka Design', N'97/522', N'MC Bouncebacks', N'SCMD Flyer', NULL, NULL)
INSERT APFlat (VendorName, InvoiceNumber, ItemDescription1, ItemDescription2, ItemDescription3, ItemDescription4) VALUES (N'Zylka Design', N'97/553B', N'Card revision', NULL, NULL, NULL)
SET IDENTITY_INSERT Customers ON 

INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (1, N'Anders', N'Maria', N'345 Winchell Pl', N'Anderson', N'IN', N'46014', N'(765) 555-7878')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (2, N'Trujillo', N'Ana', N'1298 E Smathers St', N'Benton', N'AR', N'72018', N'(501) 555-7733')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (3, N'Moreno', N'Antonio', N'6925 N Parkland Ave', N'Puyallup', N'WA', N'98373', N'(253) 555-8332')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (4, N'Hardy', N'Thomas', N'83 d''Urberville Ln', N'Casterbridge', N'GA', N'31209', N'(478) 555-1139')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (5, N'Berglund', N'Christina', N'22717 E 73rd Ave', N'Dubuque', N'IA', N'52004', N'(319) 555-1139')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (6, N'Moos', N'Hanna', N'1778 N Bovine Ave', N'Peoria', N'IL', N'61638', N'(309) 555-8755')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (7, N'Citeaux', N'Fred', N'1234 Main St', N'Normal', N'IL', N'61761', N'(309) 555-1914')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (8, N'Summer', N'Martin', N'1877 Ete Ct', N'Frogtown', N'LA', N'70563', N'(337) 555-9441')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (9, N'Lebihan', N'Laurence', N'717 E Michigan Ave', N'Chicago', N'IL', N'60611', N'(312) 555-9441')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (10, N'Lincoln', N'Elizabeth', N'4562 Rt 78 E', N'Vancouver', N'WA', N'98684', N'(360) 555-2680')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (32, N'Snyder', N'Howard', N'2732 Baker Blvd.', N'Eugene', N'OR', N'97403', N'(503) 555-7555')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (36, N'Latimer', N'Yoshi', N'City Center Plaza 516 Main St.', N'Elgin', N'OR', N'97827', N'(503) 555-6874')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (43, N'Steel', N'John', N'12 Orchestra Terrace', N'Walla Walla', N'WA', N'99362', N'(509) 555-7969')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (45, N'Yorres', N'Jaime', N'87 Polk St. Suite 5', N'San Francisco', N'CA', N'94117', N'(415) 555-5938')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (48, N'Wilson', N'Fran', N'89 Chiaroscuro Rd.', N'Portland', N'OR', N'97219', N'(503) 555-9573')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (55, N'Phillips', N'Rene', N'2743 Bering St.', N'Anchorage', N'AK', N'99508', N'(907) 555-7584')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (65, N'Wilson', N'Paula', N'2817 Milton Dr.', N'Albuquerque', N'NM', N'87110', N'(505) 555-5939')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (71, N'Pavarotti', N'Jose', N'187 Suffolk Ln.', N'Boise', N'ID', N'83720', N'(208) 555-8097')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (75, N'Braunschweiger', N'Art', N'P.O. Box 555', N'Lander', N'WY', N'82520', N'(307) 555-4680')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (77, N'Nixon', N'Liz', N'89 Jefferson Way Suite 2', N'Providence', N'RI', N'02909', N'(401) 555-3612')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (78, N'Wong', N'Liu', N'55 Grizzly Peak Rd.', N'Butte', N'MT', N'59801', N'(406) 555-5834')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (82, N'Nagy', N'Helvetius', N'722 DaVinci Blvd.', N'Concord', N'MA', N'01742', N'(351) 555-1219')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (89, N'Jablonski', N'Karl', N'305 - 14th Ave. S. Suite 3B', N'Seattle', N'WA', N'98128', N'(206) 555-4112')
INSERT Customers (CustID, CustomerLast, CustomerFirst, CustAddr, CustCity, CustState, CustZip, CustPhone) VALUES (92, N'Chelan', N'Donna', N'2299 E Baylor Dr', N'Dallas', N'TX', N'75224', N'(469) 555-8828')
SET IDENTITY_INSERT Customers OFF
SET IDENTITY_INSERT DateSample ON 

INSERT DateSample (ID, StartDate) VALUES (1, CAST(N'1990-11-01T00:00:00.000' AS DateTime))
INSERT DateSample (ID, StartDate) VALUES (2, CAST(N'2010-10-28T00:00:00.000' AS DateTime))
INSERT DateSample (ID, StartDate) VALUES (3, CAST(N'2015-06-30T00:00:00.000' AS DateTime))
INSERT DateSample (ID, StartDate) VALUES (4, CAST(N'2016-10-28T10:00:00.000' AS DateTime))
INSERT DateSample (ID, StartDate) VALUES (5, CAST(N'2022-10-28T13:58:32.823' AS DateTime))
INSERT DateSample (ID, StartDate) VALUES (6, CAST(N'2022-11-01T09:02:25.000' AS DateTime))
SET IDENTITY_INSERT DateSample OFF
SET IDENTITY_INSERT Departments ON 

INSERT Departments (DeptNo, DeptName) VALUES (1, N'Accounting')
INSERT Departments (DeptNo, DeptName) VALUES (2, N'Payroll')
INSERT Departments (DeptNo, DeptName) VALUES (3, N'Operations')
INSERT Departments (DeptNo, DeptName) VALUES (4, N'Personnel')
INSERT Departments (DeptNo, DeptName) VALUES (5, N'Maintenance')
SET IDENTITY_INSERT Departments OFF
SET IDENTITY_INSERT Employees ON 

INSERT Employees (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES (1, N'Smith', N'Cindy', 2, NULL)
INSERT Employees (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES (2, N'Jones', N'Elmer', 4, 1)
INSERT Employees (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES (3, N'Simonian', N'Ralph', 2, 2)
INSERT Employees (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES (4, N'Hernandez', N'Olivia', 1, 2)
INSERT Employees (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES (5, N'Aaronsen', N'Robert', 2, 3)
INSERT Employees (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES (6, N'Watson', N'Denise', 6, 3)
INSERT Employees (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES (7, N'Hardy', N'Thomas', 5, 2)
INSERT Employees (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES (8, N'O''Leary', N'Rhea', 4, 2)
INSERT Employees (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES (9, N'Locario', N'Paulo', 6, 1)
SET IDENTITY_INSERT Employees OFF
SET IDENTITY_INSERT EmployeesOld ON 

INSERT EmployeesOld (EmployeeID, LastName, FirstName, DeptNo) VALUES (1, N'Smith', N'Cindy', 2)
INSERT EmployeesOld (EmployeeID, LastName, FirstName, DeptNo) VALUES (2, N'Jones', N'Elmer', 4)
INSERT EmployeesOld (EmployeeID, LastName, FirstName, DeptNo) VALUES (3, N'Simonian', N'Ralph', 2)
INSERT EmployeesOld (EmployeeID, LastName, FirstName, DeptNo) VALUES (4, N'Hernandez', N'Olivia', 1)
INSERT EmployeesOld (EmployeeID, LastName, FirstName, DeptNo) VALUES (5, N'Aaronsen', N'Robert', 2)
INSERT EmployeesOld (EmployeeID, LastName, FirstName, DeptNo) VALUES (6, N'Watson', N'Denise', 6)
INSERT EmployeesOld (EmployeeID, LastName, FirstName, DeptNo) VALUES (7, N'Hardy', N'Thomas', 5)
INSERT EmployeesOld (EmployeeID, LastName, FirstName, DeptNo) VALUES (8, N'O''Leary', N'Rhea', 4)
INSERT EmployeesOld (EmployeeID, LastName, FirstName, DeptNo) VALUES (9, N'Locario', N'Paulo', 6)
SET IDENTITY_INSERT EmployeesOld OFF
SET IDENTITY_INSERT EmployeesTest ON 

INSERT EmployeesTest (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES (1, N'Smith', N'Cindy', 2, NULL)
INSERT EmployeesTest (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES (2, N'Jones', N'Elmer', 4, 1)
INSERT EmployeesTest (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES (3, N'Simonian', N'Ralph', 2, 2)
INSERT EmployeesTest (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES (4, N'Hernandez', N'Olivia', 1, 9)
INSERT EmployeesTest (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES (5, N'Aaronsen', N'Robert', 2, 4)
INSERT EmployeesTest (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES (6, N'Watson', N'Denise', 6, 8)
INSERT EmployeesTest (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES (7, N'Hardy', N'Thomas', 5, 2)
INSERT EmployeesTest (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES (8, N'O''Leary', N'Rhea', 4, 9)
INSERT EmployeesTest (EmployeeID, LastName, FirstName, DeptNo, ManagerID) VALUES (9, N'Locario', N'Paulo', 6, 1)
SET IDENTITY_INSERT EmployeesTest OFF
SET IDENTITY_INSERT Investors ON 

INSERT Investors (InvestorID, LastName, FirstName, Address, City, State, ZipCode, Phone, Investments, NetGain) VALUES (1, N'Anders', N'Maria', N'345 Winchell Pl', N'Anderson', N'IN', N'46014     ', N'(765) 555-7878      ', 15000.0000, 1242.5700)
INSERT Investors (InvestorID, LastName, FirstName, Address, City, State, ZipCode, Phone, Investments, NetGain) VALUES (2, N'Trujilo', N'Ana', N'1298 E Smathers St.', N'Benton', N'AR', N'72018     ', N'(510) 555-7733      ', 43500.0000, 8497.4400)
INSERT Investors (InvestorID, LastName, FirstName, Address, City, State, ZipCode, Phone, Investments, NetGain) VALUES (3, N'Moreno', N'Antonio', N'6925 N Parkland Ave.', N'Puyallup', N'WA', N'98373     ', N'(253) 555-8332      ', 22900.0000, 2338.8700)
INSERT Investors (InvestorID, LastName, FirstName, Address, City, State, ZipCode, Phone, Investments, NetGain) VALUES (4, N'Hardy', N'Thomas', N'83 d''Urberville Ln.', N'Casterbridge', N'GA', N'31209     ', N'(478) 555-1139      ', 5000.0000, -245.6900)
INSERT Investors (InvestorID, LastName, FirstName, Address, City, State, ZipCode, Phone, Investments, NetGain) VALUES (5, N'Berglund', N'Christina', N'22717 E 73rd Ave.', N'Dubuque', N'IA', N'52004     ', N'(319) 555-1139      ', 11750.0000, 865.7700)
SET IDENTITY_INSERT Investors OFF
INSERT Invoices (InvoiceID, InvoiceNumber, InvoiceTotal) VALUES (1, 8937, 50.0000)
INSERT Invoices (InvoiceID, InvoiceNumber, InvoiceTotal) VALUES (2, 3662, 100.0000)
INSERT Invoices (InvoiceID, InvoiceNumber, InvoiceTotal) VALUES (3, NULL, NULL)
INSERT Invoices (InvoiceID, InvoiceNumber, InvoiceTotal) VALUES (4, 4553, 250.0000)
INSERT Invoices (InvoiceID, InvoiceNumber, InvoiceTotal) VALUES (5, 8937, 0.0000)
SET IDENTITY_INSERT NullSample ON 

INSERT NullSample (InvoiceID, InvoiceTotal) VALUES (1, 125.0000)
INSERT NullSample (InvoiceID, InvoiceTotal) VALUES (2, 0.0000)
INSERT NullSample (InvoiceID, InvoiceTotal) VALUES (3, NULL)
INSERT NullSample (InvoiceID, InvoiceTotal) VALUES (4, 2199.9900)
INSERT NullSample (InvoiceID, InvoiceTotal) VALUES (5, 0.0000)
SET IDENTITY_INSERT NullSample OFF
SET IDENTITY_INSERT PaidInvoices ON 

INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (1, 122, N'989319-457', CAST(N'2022-10-08' AS Date), 3813.3300, 3813.3300, 0.0000, 3, CAST(N'2022-11-08' AS Date), CAST(N'2022-11-07' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (2, 123, N'263253241', CAST(N'2022-10-10' AS Date), 40.2000, 40.2000, 0.0000, 3, CAST(N'2022-11-10' AS Date), CAST(N'2022-11-14' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (3, 123, N'963253234', CAST(N'2022-10-13' AS Date), 138.7500, 138.7500, 0.0000, 3, CAST(N'2022-11-13' AS Date), CAST(N'2022-11-09' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (4, 123, N'2-000-2993', CAST(N'2022-10-16' AS Date), 144.7000, 144.7000, 0.0000, 3, CAST(N'2022-11-16' AS Date), CAST(N'2022-11-12' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (5, 123, N'963253251', CAST(N'2022-10-16' AS Date), 15.5000, 15.5000, 0.0000, 3, CAST(N'2022-11-16' AS Date), CAST(N'2022-11-11' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (6, 123, N'963253261', CAST(N'2022-10-16' AS Date), 42.7500, 42.7500, 0.0000, 3, CAST(N'2022-11-16' AS Date), CAST(N'2022-11-21' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (7, 123, N'963253237', CAST(N'2022-10-21' AS Date), 172.5000, 172.5000, 0.0000, 3, CAST(N'2022-11-21' AS Date), CAST(N'2022-11-22' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (8, 89, N'125520-1', CAST(N'2022-10-24' AS Date), 95.0000, 95.0000, 0.0000, 1, CAST(N'2022-11-04' AS Date), CAST(N'2022-11-01' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (9, 121, N'97/488', CAST(N'2022-10-24' AS Date), 601.9500, 601.9500, 0.0000, 3, CAST(N'2022-11-24' AS Date), CAST(N'2022-11-21' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (10, 123, N'263253250', CAST(N'2022-10-24' AS Date), 42.6700, 42.6700, 0.0000, 3, CAST(N'2022-11-24' AS Date), CAST(N'2022-11-22' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (11, 123, N'963253262', CAST(N'2022-10-25' AS Date), 42.5000, 42.5000, 0.0000, 3, CAST(N'2022-11-25' AS Date), CAST(N'2022-11-20' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (12, 96, N'I77271-O01', CAST(N'2022-10-26' AS Date), 662.0000, 662.0000, 0.0000, 2, CAST(N'2022-11-16' AS Date), CAST(N'2022-11-13' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (13, 95, N'111-92R-10096', CAST(N'2022-10-30' AS Date), 16.3300, 16.3300, 0.0000, 2, CAST(N'2022-11-20' AS Date), CAST(N'2022-11-23' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (14, 115, N'25022117', CAST(N'2022-11-01' AS Date), 6.0000, 6.0000, 0.0000, 4, CAST(N'2022-12-10' AS Date), CAST(N'2022-12-10' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (15, 48, N'P02-88D77S7', CAST(N'2022-11-03' AS Date), 856.9200, 856.9200, 0.0000, 3, CAST(N'2022-12-02' AS Date), CAST(N'2022-11-30' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (16, 97, N'21-4748363', CAST(N'2022-11-03' AS Date), 9.9500, 9.9500, 0.0000, 2, CAST(N'2022-11-23' AS Date), CAST(N'2022-11-22' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (17, 123, N'4-321-2596', CAST(N'2022-11-05' AS Date), 10.0000, 10.0000, 0.0000, 3, CAST(N'2022-12-04' AS Date), CAST(N'2022-12-05' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (18, 123, N'963253242', CAST(N'2022-11-06' AS Date), 104.0000, 104.0000, 0.0000, 3, CAST(N'2022-12-05' AS Date), CAST(N'2022-12-05' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (19, 34, N'QP58872', CAST(N'2022-11-07' AS Date), 116.5400, 116.5400, 0.0000, 1, CAST(N'2022-11-17' AS Date), CAST(N'2022-11-19' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (20, 115, N'24863706', CAST(N'2022-11-10' AS Date), 6.0000, 6.0000, 0.0000, 4, CAST(N'2022-12-19' AS Date), CAST(N'2022-12-15' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (21, 119, N'10843', CAST(N'2022-11-11' AS Date), 4901.2600, 4901.2600, 0.0000, 2, CAST(N'2022-11-30' AS Date), CAST(N'2022-11-29' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (22, 123, N'963253235', CAST(N'2022-11-11' AS Date), 108.2500, 108.2500, 0.0000, 3, CAST(N'2022-12-10' AS Date), CAST(N'2022-12-09' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (23, 97, N'21-4923721', CAST(N'2022-11-13' AS Date), 9.9500, 9.9500, 0.0000, 2, CAST(N'2022-12-02' AS Date), CAST(N'2022-11-28' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (24, 113, N'77290', CAST(N'2022-11-13' AS Date), 1750.0000, 1750.0000, 0.0000, 5, CAST(N'2023-01-02' AS Date), CAST(N'2023-01-05' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (25, 123, N'963253246', CAST(N'2022-11-13' AS Date), 129.0000, 129.0000, 0.0000, 3, CAST(N'2022-12-12' AS Date), CAST(N'2022-12-09' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (26, 123, N'4-342-8069', CAST(N'2022-11-14' AS Date), 10.0000, 10.0000, 0.0000, 3, CAST(N'2022-12-13' AS Date), CAST(N'2022-12-13' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (27, 88, N'972110', CAST(N'2022-11-15' AS Date), 207.7800, 207.7800, 0.0000, 1, CAST(N'2022-11-25' AS Date), CAST(N'2022-11-27' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (28, 123, N'963253263', CAST(N'2022-11-16' AS Date), 109.5000, 109.5000, 0.0000, 3, CAST(N'2022-12-15' AS Date), CAST(N'2022-12-10' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (29, 108, N'121897', CAST(N'2022-11-19' AS Date), 450.0000, 450.0000, 0.0000, 4, CAST(N'2022-12-28' AS Date), CAST(N'2023-01-03' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (30, 123, N'1-200-5164', CAST(N'2022-11-20' AS Date), 63.4000, 63.4000, 0.0000, 3, CAST(N'2022-12-19' AS Date), CAST(N'2022-12-24' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (31, 104, N'P02-3772', CAST(N'2022-11-21' AS Date), 7125.3400, 7125.3400, 0.0000, 3, CAST(N'2022-12-20' AS Date), CAST(N'2022-12-24' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (32, 121, N'97/486', CAST(N'2022-11-21' AS Date), 953.1000, 953.1000, 0.0000, 3, CAST(N'2022-12-20' AS Date), CAST(N'2022-12-22' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (33, 105, N'94007005', CAST(N'2022-11-23' AS Date), 220.0000, 220.0000, 0.0000, 3, CAST(N'2022-12-22' AS Date), CAST(N'2022-12-26' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (34, 123, N'963253232', CAST(N'2022-11-23' AS Date), 127.7500, 127.7500, 0.0000, 3, CAST(N'2022-12-22' AS Date), CAST(N'2022-12-18' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (35, 107, N'RTR-72-3662-X', CAST(N'2022-11-25' AS Date), 1600.0000, 1600.0000, 0.0000, 4, CAST(N'2023-01-04' AS Date), CAST(N'2023-01-09' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (36, 121, N'97/465', CAST(N'2022-11-25' AS Date), 565.1500, 565.1500, 0.0000, 3, CAST(N'2022-12-24' AS Date), CAST(N'2022-12-24' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (37, 123, N'963253260', CAST(N'2022-11-25' AS Date), 36.0000, 36.0000, 0.0000, 3, CAST(N'2022-12-24' AS Date), CAST(N'2022-12-26' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (38, 123, N'963253272', CAST(N'2022-11-26' AS Date), 61.5000, 61.5000, 0.0000, 3, CAST(N'2022-12-25' AS Date), CAST(N'2022-12-28' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (39, 110, N'0-2058', CAST(N'2022-11-28' AS Date), 37966.1900, 37966.1900, 0.0000, 3, CAST(N'2022-12-27' AS Date), CAST(N'2022-12-28' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (40, 121, N'97/503', CAST(N'2022-11-30' AS Date), 639.7700, 639.7700, 0.0000, 3, CAST(N'2022-12-28' AS Date), CAST(N'2022-12-25' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (41, 123, N'963253255', CAST(N'2022-11-30' AS Date), 53.7500, 53.7500, 0.0000, 3, CAST(N'2022-12-28' AS Date), CAST(N'2022-12-27' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (42, 123, N'94007069', CAST(N'2022-11-30' AS Date), 400.0000, 400.0000, 0.0000, 3, CAST(N'2022-12-28' AS Date), CAST(N'2023-01-01' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (43, 72, N'40318', CAST(N'2022-12-01' AS Date), 21842.0000, 21842.0000, 0.0000, 3, CAST(N'2023-01-01' AS Date), CAST(N'2022-12-28' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (44, 95, N'111-92R-10094', CAST(N'2022-12-01' AS Date), 19.6700, 19.6700, 0.0000, 2, CAST(N'2022-12-21' AS Date), CAST(N'2022-12-24' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (45, 122, N'989319-437', CAST(N'2022-12-01' AS Date), 2765.3600, 2765.3600, 0.0000, 3, CAST(N'2023-01-01' AS Date), CAST(N'2022-12-28' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (46, 37, N'547481328', CAST(N'2022-12-03' AS Date), 224.0000, 224.0000, 0.0000, 3, CAST(N'2023-01-03' AS Date), CAST(N'2023-01-04' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (47, 83, N'31359783', CAST(N'2022-12-03' AS Date), 1575.0000, 1575.0000, 0.0000, 2, CAST(N'2022-12-23' AS Date), CAST(N'2022-12-21' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (48, 123, N'1-202-2978', CAST(N'2022-12-03' AS Date), 33.0000, 33.0000, 0.0000, 3, CAST(N'2023-01-03' AS Date), CAST(N'2023-01-05' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (49, 95, N'111-92R-10097', CAST(N'2022-12-04' AS Date), 16.3300, 16.3300, 0.0000, 2, CAST(N'2022-12-24' AS Date), CAST(N'2022-12-26' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (50, 37, N'547479217', CAST(N'2022-12-07' AS Date), 116.0000, 116.0000, 0.0000, 3, CAST(N'2023-01-07' AS Date), CAST(N'2023-01-07' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (51, 122, N'989319-477', CAST(N'2022-12-08' AS Date), 2184.1100, 2184.1100, 0.0000, 3, CAST(N'2023-01-08' AS Date), CAST(N'2023-01-08' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (52, 34, N'Q545443', CAST(N'2022-12-09' AS Date), 1083.5800, 1083.5800, 0.0000, 1, CAST(N'2022-12-19' AS Date), CAST(N'2022-12-23' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (53, 95, N'111-92R-10092', CAST(N'2022-12-09' AS Date), 46.2100, 46.2100, 0.0000, 2, CAST(N'2022-12-28' AS Date), CAST(N'2023-01-02' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (54, 121, N'97/553B', CAST(N'2022-12-10' AS Date), 313.5500, 313.5500, 0.0000, 3, CAST(N'2023-01-10' AS Date), CAST(N'2023-01-09' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (55, 123, N'963253245', CAST(N'2022-12-10' AS Date), 40.7500, 40.7500, 0.0000, 3, CAST(N'2023-01-10' AS Date), CAST(N'2023-01-12' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (56, 86, N'367447', CAST(N'2022-12-11' AS Date), 2433.0000, 2433.0000, 0.0000, 1, CAST(N'2022-12-21' AS Date), CAST(N'2022-12-17' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (57, 103, N'75C-90227', CAST(N'2022-12-11' AS Date), 1367.5000, 1367.5000, 0.0000, 5, CAST(N'2023-01-31' AS Date), CAST(N'2023-01-31' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (58, 123, N'963253256', CAST(N'2022-12-11' AS Date), 53.2500, 53.2500, 0.0000, 3, CAST(N'2023-01-11' AS Date), CAST(N'2023-01-07' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (59, 123, N'4-314-3057', CAST(N'2022-12-11' AS Date), 13.7500, 13.7500, 0.0000, 3, CAST(N'2023-01-11' AS Date), CAST(N'2023-01-15' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (60, 122, N'989319-497', CAST(N'2022-12-12' AS Date), 2312.2000, 2312.2000, 0.0000, 3, CAST(N'2023-01-12' AS Date), CAST(N'2023-01-09' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (61, 115, N'24946731', CAST(N'2022-12-15' AS Date), 25.6700, 25.6700, 0.0000, 4, CAST(N'2023-01-25' AS Date), CAST(N'2023-01-26' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (62, 123, N'963253269', CAST(N'2022-12-15' AS Date), 26.7500, 26.7500, 0.0000, 3, CAST(N'2023-01-15' AS Date), CAST(N'2023-01-11' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (63, 122, N'989319-427', CAST(N'2022-12-16' AS Date), 2115.8100, 2115.8100, 0.0000, 3, CAST(N'2023-01-16' AS Date), CAST(N'2023-01-19' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (64, 123, N'963253267', CAST(N'2022-12-17' AS Date), 23.5000, 23.5000, 0.0000, 3, CAST(N'2023-01-17' AS Date), CAST(N'2023-01-19' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (65, 99, N'509786', CAST(N'2022-12-18' AS Date), 6940.2500, 6940.2500, 0.0000, 3, CAST(N'2023-01-18' AS Date), CAST(N'2023-01-15' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (66, 123, N'263253253', CAST(N'2022-12-18' AS Date), 31.9500, 31.9500, 0.0000, 3, CAST(N'2023-01-18' AS Date), CAST(N'2023-01-21' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (67, 122, N'989319-487', CAST(N'2022-12-20' AS Date), 1927.5400, 1927.5400, 0.0000, 3, CAST(N'2023-01-20' AS Date), CAST(N'2023-01-18' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (68, 81, N'MABO1489', CAST(N'2022-12-21' AS Date), 936.9300, 936.9300, 0.0000, 2, CAST(N'2023-01-11' AS Date), CAST(N'2023-01-10' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (69, 80, N'133560', CAST(N'2022-12-22' AS Date), 175.0000, 175.0000, 0.0000, 2, CAST(N'2023-01-12' AS Date), CAST(N'2023-01-16' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (70, 115, N'24780512', CAST(N'2022-12-22' AS Date), 6.0000, 6.0000, 0.0000, 4, CAST(N'2023-02-01' AS Date), CAST(N'2023-01-29' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (71, 123, N'963253254', CAST(N'2022-12-22' AS Date), 108.5000, 108.5000, 0.0000, 3, CAST(N'2023-01-22' AS Date), CAST(N'2023-01-20' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (72, 123, N'43966316', CAST(N'2022-12-22' AS Date), 10.0000, 10.0000, 0.0000, 3, CAST(N'2023-01-22' AS Date), CAST(N'2023-01-17' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (73, 114, N'CBM9920-M-T77109', CAST(N'2022-12-23' AS Date), 290.0000, 290.0000, 0.0000, 1, CAST(N'2023-01-03' AS Date), CAST(N'2022-12-28' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (74, 102, N'109596', CAST(N'2022-12-24' AS Date), 41.8000, 41.8000, 0.0000, 4, CAST(N'2023-02-03' AS Date), CAST(N'2023-02-04' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (75, 123, N'7548906-20', CAST(N'2022-12-24' AS Date), 27.0000, 27.0000, 0.0000, 3, CAST(N'2023-01-24' AS Date), CAST(N'2023-01-24' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (76, 123, N'963253248', CAST(N'2022-12-24' AS Date), 241.0000, 241.0000, 0.0000, 3, CAST(N'2023-01-24' AS Date), CAST(N'2023-01-25' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (77, 121, N'97/553', CAST(N'2022-12-25' AS Date), 904.1400, 904.1400, 0.0000, 3, CAST(N'2023-01-25' AS Date), CAST(N'2023-01-25' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (78, 121, N'97/522', CAST(N'2022-12-28' AS Date), 1962.1300, 1762.1300, 200.0000, 3, CAST(N'2023-01-28' AS Date), CAST(N'2023-01-30' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (79, 100, N'587056', CAST(N'2022-12-28' AS Date), 2184.5000, 2184.5000, 0.0000, 4, CAST(N'2023-02-09' AS Date), CAST(N'2023-02-07' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (80, 122, N'989319-467', CAST(N'2023-01-01' AS Date), 2318.0300, 2318.0300, 0.0000, 3, CAST(N'2023-01-31' AS Date), CAST(N'2023-01-29' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (81, 123, N'263253265', CAST(N'2023-01-02' AS Date), 26.2500, 26.2500, 0.0000, 3, CAST(N'2023-02-01' AS Date), CAST(N'2023-01-28' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (82, 94, N'203339-13', CAST(N'2023-01-05' AS Date), 17.5000, 17.5000, 0.0000, 2, CAST(N'2023-01-25' AS Date), CAST(N'2023-01-27' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (83, 95, N'111-92R-10093', CAST(N'2023-01-06' AS Date), 39.7700, 39.7700, 0.0000, 2, CAST(N'2023-01-26' AS Date), CAST(N'2023-01-22' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (84, 123, N'963253258', CAST(N'2023-01-06' AS Date), 111.0000, 111.0000, 0.0000, 3, CAST(N'2023-02-05' AS Date), CAST(N'2023-02-05' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (85, 123, N'963253271', CAST(N'2023-01-07' AS Date), 158.0000, 158.0000, 0.0000, 3, CAST(N'2023-02-06' AS Date), CAST(N'2023-02-11' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (86, 123, N'963253230', CAST(N'2023-01-07' AS Date), 739.2000, 739.2000, 0.0000, 3, CAST(N'2023-02-06' AS Date), CAST(N'2023-02-06' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (87, 123, N'963253244', CAST(N'2023-01-08' AS Date), 60.0000, 60.0000, 0.0000, 3, CAST(N'2023-02-07' AS Date), CAST(N'2023-02-09' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (88, 123, N'963253239', CAST(N'2023-01-08' AS Date), 147.2500, 147.2500, 0.0000, 3, CAST(N'2023-02-07' AS Date), CAST(N'2023-02-11' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (90, 123, N'963253252', CAST(N'2023-01-12' AS Date), 38.7500, 38.7500, 0.0000, 3, CAST(N'2023-02-11' AS Date), CAST(N'2023-02-11' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (91, 95, N'111-92R-10095', CAST(N'2023-01-15' AS Date), 32.7000, 32.7000, 0.0000, 2, CAST(N'2023-02-04' AS Date), CAST(N'2023-02-06' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (92, 117, N'111897', CAST(N'2023-01-15' AS Date), 16.6200, 16.6200, 0.0000, 3, CAST(N'2023-02-14' AS Date), CAST(N'2023-02-14' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (93, 123, N'4-327-7357', CAST(N'2023-01-16' AS Date), 162.7500, 162.7500, 0.0000, 3, CAST(N'2023-02-15' AS Date), CAST(N'2023-02-11' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (95, 82, N'C73-24', CAST(N'2023-01-19' AS Date), 600.0000, 600.0000, 0.0000, 2, CAST(N'2023-02-08' AS Date), CAST(N'2023-02-13' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (96, 110, N'P-0259', CAST(N'2023-01-19' AS Date), 26881.4000, 26881.4000, 0.0000, 3, CAST(N'2023-02-18' AS Date), CAST(N'2023-02-20' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (97, 90, N'97-1024A', CAST(N'2023-01-20' AS Date), 356.4800, 356.4800, 0.0000, 2, CAST(N'2023-02-09' AS Date), CAST(N'2023-02-07' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (103, 122, N'989319-417', CAST(N'2023-01-23' AS Date), 2051.5900, 2051.5900, 0.0000, 3, CAST(N'2023-02-22' AS Date), CAST(N'2023-02-24' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (104, 123, N'263253243', CAST(N'2023-01-23' AS Date), 44.4400, 44.4400, 0.0000, 3, CAST(N'2023-02-22' AS Date), CAST(N'2023-02-24' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (106, 110, N'0-2060', CAST(N'2023-01-24' AS Date), 23517.5800, 21221.6300, 2295.9500, 3, CAST(N'2023-02-23' AS Date), CAST(N'2023-02-27' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (107, 122, N'989319-447', CAST(N'2023-01-24' AS Date), 3689.9900, 3689.9900, 0.0000, 3, CAST(N'2023-02-23' AS Date), CAST(N'2023-02-19' AS Date))
GO
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (108, 123, N'963253240', CAST(N'2023-01-24' AS Date), 67.0000, 67.0000, 0.0000, 3, CAST(N'2023-02-23' AS Date), CAST(N'2023-02-23' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (109, 121, N'97/222', CAST(N'2023-01-25' AS Date), 1000.4600, 1000.4600, 0.0000, 3, CAST(N'2023-02-24' AS Date), CAST(N'2023-02-22' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (111, 123, N'263253257', CAST(N'2023-01-30' AS Date), 22.5700, 22.5700, 0.0000, 3, CAST(N'2023-03-01' AS Date), CAST(N'2023-03-03' AS Date))
INSERT PaidInvoices (InvoiceID, VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, TermsID, InvoiceDueDate, PaymentDate) VALUES (114, 123, N'963253249', CAST(N'2023-02-02' AS Date), 127.7500, 127.7500, 0.0000, 3, CAST(N'2023-03-01' AS Date), CAST(N'2023-03-04' AS Date))
SET IDENTITY_INSERT PaidInvoices OFF
INSERT Projects (ProjectNo, EmployeeID) VALUES (N'P1011', 8)
INSERT Projects (ProjectNo, EmployeeID) VALUES (N'P1011', 4)
INSERT Projects (ProjectNo, EmployeeID) VALUES (N'P1012', 3)
INSERT Projects (ProjectNo, EmployeeID) VALUES (N'P1012', 1)
INSERT Projects (ProjectNo, EmployeeID) VALUES (N'P1012', 5)
INSERT Projects (ProjectNo, EmployeeID) VALUES (N'P1013', 6)
INSERT Projects (ProjectNo, EmployeeID) VALUES (N'P1013', 9)
INSERT Projects (ProjectNo, EmployeeID) VALUES (N'P1014', 10)
SET IDENTITY_INSERT RealSample ON 

INSERT RealSample (ID, R) VALUES (1, 1.0000000000000011)
INSERT RealSample (ID, R) VALUES (2, 1)
INSERT RealSample (ID, R) VALUES (3, 0.999999999999999)
INSERT RealSample (ID, R) VALUES (4, 1234.56789012345)
INSERT RealSample (ID, R) VALUES (5, 999.04440209348)
INSERT RealSample (ID, R) VALUES (6, 24.04849)
SET IDENTITY_INSERT RealSample OFF
SET IDENTITY_INSERT SalesReps ON 

INSERT SalesReps (RepID, RepFirstName, RepLastName) VALUES (1, N'Jonathon', N'Thomas')
INSERT SalesReps (RepID, RepFirstName, RepLastName) VALUES (2, N'Sonja', N'Martinez')
INSERT SalesReps (RepID, RepFirstName, RepLastName) VALUES (3, N'Andrew', N'Markasian')
INSERT SalesReps (RepID, RepFirstName, RepLastName) VALUES (4, N'Phillip', N'Winters')
INSERT SalesReps (RepID, RepFirstName, RepLastName) VALUES (5, N'Lydia', N'Kramer')
SET IDENTITY_INSERT SalesReps OFF
INSERT SalesTotals (RepID, SalesYear, SalesTotal) VALUES (1, N'2014', 1274856.3800)
INSERT SalesTotals (RepID, SalesYear, SalesTotal) VALUES (1, N'2015', 923746.8500)
INSERT SalesTotals (RepID, SalesYear, SalesTotal) VALUES (1, N'2016', 998337.4600)
INSERT SalesTotals (RepID, SalesYear, SalesTotal) VALUES (2, N'2014', 978465.9900)
INSERT SalesTotals (RepID, SalesYear, SalesTotal) VALUES (2, N'2015', 974853.8100)
INSERT SalesTotals (RepID, SalesYear, SalesTotal) VALUES (2, N'2016', 887695.7500)
INSERT SalesTotals (RepID, SalesYear, SalesTotal) VALUES (3, N'2014', 1032875.4800)
INSERT SalesTotals (RepID, SalesYear, SalesTotal) VALUES (3, N'2015', 1132744.5600)
INSERT SalesTotals (RepID, SalesYear, SalesTotal) VALUES (4, N'2015', 655786.9200)
INSERT SalesTotals (RepID, SalesYear, SalesTotal) VALUES (4, N'2016', 72443.3700)
INSERT SalesTotals (RepID, SalesYear, SalesTotal) VALUES (5, N'2015', 422847.8600)
INSERT SalesTotals (RepID, SalesYear, SalesTotal) VALUES (5, N'2016', 45182.4400)
SET IDENTITY_INSERT Sample ON 

INSERT Sample (ID, Number, Color) VALUES (1, 8937, N'Brown     ')
INSERT Sample (ID, Number, Color) VALUES (2, 3662, N'Blue      ')
INSERT Sample (ID, Number, Color) VALUES (3, NULL, N'Red       ')
INSERT Sample (ID, Number, Color) VALUES (4, 4553, N'Green     ')
INSERT Sample (ID, Number, Color) VALUES (5, 8937, N'Yellow    ')
INSERT Sample (ID, Number, Color) VALUES (6, 606, N'Purple    ')
INSERT Sample (ID, Number, Color) VALUES (7, NULL, N'Orange    ')
INSERT Sample (ID, Number, Color) VALUES (8, 808, N'None      ')
INSERT Sample (ID, Number, Color) VALUES (9, NULL, N'None      ')
INSERT Sample (ID, Number, Color) VALUES (10, NULL, N'None      ')
INSERT Sample (ID, Number, Color) VALUES (11, NULL, N'None      ')
SET IDENTITY_INSERT Sample OFF
INSERT StringSample (ID, Name, AltID) VALUES (N'1  ', N'Lizbeth Darien', N'01 ')
INSERT StringSample (ID, Name, AltID) VALUES (N'2  ', N'Darnell O''Sullivan', N'02 ')
INSERT StringSample (ID, Name, AltID) VALUES (N'17 ', N'Lance Pinos-Potter', N'17 ')
INSERT StringSample (ID, Name, AltID) VALUES (N'20 ', N'Jean Paul Renard', N'20 ')
INSERT StringSample (ID, Name, AltID) VALUES (N'3  ', N'Alisha von Strump', N'03 ')
SET IDENTITY_INSERT Vendors ON 

INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (1, N'US Postal Service', N'Attn:  Supt. Window Services', N'PO Box 7005', N'Madison', N'WI', N'53707', N'Alberto', N'Francesco', N'(209) 555-1205', 1, 552, CAST(N'2013-01-23' AS Date), 0.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (2, N'National Information Data Ctr', N'PO Box 96621', N'', N'Washington', N'DC', N'20110', N'Irvin', N'Ania', N'(301) 555-8950', 3, 540, CAST(N'2016-09-11' AS Date), 0.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (3, N'Register of Copyrights', N'Library Of Congress', N'', N'Washington', N'DC', N'20559', N'Liana', N'Lukas', N'', 3, 403, CAST(N'2016-09-28' AS Date), 0.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (4, N'Jobtrak', N'1990 Westwood Blvd Ste 260', N'', N'Los Angeles', N'CA', N'90025', N'Quinn', N'Kenzie', N'(800) 555-8725', 3, 572, CAST(N'2016-10-10' AS Date), 0.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (5, N'Newbrige Book Clubs', N'3000 Cindel Drive', N'', N'Delran', N'NJ', N'08370', N'Marks', N'Michelle', N'(800) 555-9980', 4, 394, CAST(N'2016-12-25' AS Date), 0.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (6, N'California Chamber Of Commerce', N'3255 Ramos Cir', N'', N'Sacramento', N'CA', N'95827', N'Mauro', N'Anton', N'(916) 555-6670', 3, 572, CAST(N'2017-01-29' AS Date), 0.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (7, N'Towne Advertiser''s Mailing Svcs', N'Kevin Minder', N'3441 W Macarthur Blvd', N'Santa Ana', N'CA', N'92704', N'Maegen', N'Ted', N'', 3, 540, CAST(N'2017-06-24' AS Date), 0.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (8, N'BFI Industries', N'PO Box 9369', N'', N'Fresno', N'CA', N'93792', N'Kaleigh', N'Erick', N'(209) 555-1551', 3, 521, CAST(N'2017-11-08' AS Date), 0.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (9, N'Pacific Gas & Electric', N'Box 52001', N'', N'San Francisco', N'CA', N'94152', N'Anthoni', N'Kaitlyn', N'(209) 555-6081', 3, 521, CAST(N'2017-11-08' AS Date), 0.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (10, N'Robbins Mobile Lock And Key', N'4669 N Fresno', N'', N'Fresno', N'CA', N'93726', N'Leigh', N'Bill', N'(209) 555-9375', 2, 523, CAST(N'2017-11-08' AS Date), 0.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (11, N'Bill Marvin Electric Inc', N'4583 E Home', N'', N'Fresno', N'CA', N'93703', N'Hostlery', N'Kaitlin', N'(209) 555-5106', 2, 523, CAST(N'2017-11-15' AS Date), 0.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (12, N'City Of Fresno', N'PO Box 2069', N'', N'Fresno', N'CA', N'93718', N'Mayte', N'Kendall', N'(209) 555-9999', 3, 574, CAST(N'2017-11-15' AS Date), 0.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (13, N'Golden Eagle Insurance Co', N'PO Box 85826', N'', N'San Diego', N'CA', N'92186', N'Blanca', N'Korah', N'', 3, 590, CAST(N'2017-11-21' AS Date), 0.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (14, N'Expedata Inc', N'4420 N. First Street, Suite 108', N'', N'Fresno', N'CA', N'93726', N'Quintin', N'Marvin', N'(209) 555-9586', 3, 589, CAST(N'2017-12-11' AS Date), 0.0000, 0.0000, 6.9500, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (15, N'ASC Signs', N'1528 N Sierra Vista', N'', N'Fresno', N'CA', N'93703', N'Darien', N'Elisabeth', N'', 1, 546, CAST(N'2017-12-25' AS Date), 0.0000, 0.0000, 108.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (16, N'Internal Revenue Service', N'', N'', N'Fresno', N'CA', N'93888', N'Aileen', N'Joan', N'', 1, 235, CAST(N'2021-01-09' AS Date), 0.0000, 0.0000, 86.0700, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (17, N'Blanchard & Johnson Associates', N'27371 Valderas', N'', N'Mission Viejo', N'CA', N'92691', N'Keeton', N'Gonzalo', N'(214) 555-3647', 3, 540, CAST(N'2021-01-23' AS Date), 0.0000, 0.0000, 354.2700, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (18, N'Fresno Photoengraving Company', N'1952 "H" Street', N'P.O. Box 1952', N'Fresno', N'CA', N'93718', N'Chaddick', N'Derek', N'(209) 555-3005', 3, 403, CAST(N'2021-01-23' AS Date), 0.0000, 0.0000, 50.3700, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (19, N'Crown Printing', N'1730 "H" St', N'', N'Fresno', N'CA', N'93721', N'Randrup', N'Leann', N'(209) 555-7473', 2, 400, CAST(N'2021-02-14' AS Date), 0.0000, 0.0000, 3016.1200, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (20, N'Diversified Printing & Pub', N'2632 Saturn St', N'', N'Brea', N'CA', N'92621', N'Lane', N'Vanesa', N'(714) 555-4541', 3, 400, CAST(N'2021-02-14' AS Date), 0.0000, 0.0000, 8805.7300, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (21, N'The Library Ltd', N'7700 Forsyth', N'', N'St Louis', N'MO', N'63105', N'Marques', N'Malia', N'(314) 555-8834', 3, 540, CAST(N'2021-05-26' AS Date), 0.0000, 0.0000, 100.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (22, N'Micro Center', N'1555 W Lane Ave', N'', N'Columbus', N'OH', N'43221', N'Evan', N'Emily', N'(614) 555-4435', 2, 160, CAST(N'2021-06-10' AS Date), 0.0000, 0.0000, 1200.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (23, N'Yale Industrial Trucks-Fresno', N'3711 W Franklin', N'', N'Fresno', N'CA', N'93706', N'Alexis', N'Alexandro', N'(209) 555-2993', 3, 532, CAST(N'2021-06-29' AS Date), 0.0000, 0.0000, 479.6300, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (24, N'Zee Medical Service Co', N'4221 W Sierra Madre #104', N'', N'Fresno', N'CA', N'93722', N'Hallie', N'Juliana', N'', 3, 570, CAST(N'2021-06-29' AS Date), 0.0000, 0.0000, 84.7800, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (25, N'California Data Marketing', N'2818 E Hamilton', N'', N'Fresno', N'CA', N'93721', N'Jonessen', N'Moises', N'(209) 555-3801', 4, 540, CAST(N'2021-07-27' AS Date), 0.0000, 0.0000, 2577.8600, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (26, N'Small Press', N'121 E Front St - 4th Floor', N'', N'Traverse City', N'MI', N'49684', N'Colette', N'Dusty', N'', 3, 540, CAST(N'2021-09-01' AS Date), 0.0000, 0.0000, 34.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (27, N'Rich Advertising', N'12 Daniel Road', N'', N'Fairfield', N'NJ', N'07004', N'Neil', N'Ingrid', N'(201) 555-9742', 3, 540, CAST(N'2021-09-29' AS Date), 0.0000, 0.0000, 3000.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (29, N'Vision Envelope & Printing', N'PO Box 3100', N'', N'Gardena', N'CA', N'90247', N'Raven', N'Jamari', N'(310) 555-7062', 3, 551, CAST(N'2021-10-12' AS Date), 0.0000, 0.0000, 1248.8300, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (30, N'Costco', N'Fresno Warehouse', N'4500 W Shaw', N'Fresno', N'CA', N'93711', N'Jaquan', N'Aaron', N'', 3, 570, CAST(N'2021-12-02' AS Date), 140.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (31, N'Enterprise Communications Inc', N'1483 Chain Bridge Rd, Ste 202', N'', N'Mclean', N'VA', N'22101', N'Lawrence', N'Eileen', N'(770) 555-9558', 2, 536, CAST(N'2021-12-21' AS Date), 500.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (32, N'RR Bowker', N'PO Box 31', N'', N'New Providence', N'NJ', N'07974', N'Essence', N'Marjorie', N'(800) 555-8110', 3, 532, CAST(N'2021-12-21' AS Date), 272.4800, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (33, N'Nielson', N'Ohio Valley Litho Division', N'Location #0470', N'Cincinnati', N'OH', N'45264', N'Brooklynn', N'Keely', N'', 2, 541, CAST(N'2021-12-28' AS Date), 5372.0000, 0.0000, 4972.8400, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (34, N'IBM', N'PO Box 61000', N'', N'San Francisco', N'CA', N'94161', N'Camron', N'Trentin', N'(800) 555-4426', 1, 160, CAST(N'2022-01-13' AS Date), 123.0000, 0.0000, 123.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (35, N'Cal State Termite', N'PO Box 956', N'', N'Selma', N'CA', N'93662', N'Hunter', N'Demetrius', N'(209) 555-1534', 2, 523, CAST(N'2022-01-27' AS Date), 65.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (36, N'Graylift', N'PO Box 2808', N'', N'Fresno', N'CA', N'93745', N'Sydney', N'Deangelo', N'(209) 555-6621', 3, 532, CAST(N'2022-01-27' AS Date), 62.1400, 0.0000, 630.7400, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (37, N'Blue Cross', N'PO Box 9061', N'', N'Oxnard', N'CA', N'93031', N'Eliana', N'Nikolas', N'(800) 555-0912', 3, 510, CAST(N'2022-02-04' AS Date), 372.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (38, N'Venture Communications Int''l', N'60 Madison Ave', N'', N'New York', N'NY', N'10010', N'Neftaly', N'Thalia', N'(212) 555-4800', 3, 540, CAST(N'2022-02-04' AS Date), 6000.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (39, N'Custom Printing Company', N'PO Box 7028', N'', N'St Louis', N'MO', N'63177', N'Myles', N'Harley', N'(301) 555-1494', 3, 540, CAST(N'2022-02-17' AS Date), 12102.0100, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (40, N'Nat Assoc of College Stores', N'500 East Lorain Street', N'', N'Oberlin', N'OH', N'44074', N'Bernard', N'Lucy', N'', 3, 572, CAST(N'2022-02-17' AS Date), 390.0000, 0.0000, 390.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (41, N'Shields Design', N'415 E Olive Ave', N'', N'Fresno', N'CA', N'93728', N'Kerry', N'Rowan', N'(209) 555-8060', 2, 403, CAST(N'2022-03-14' AS Date), 5588.9900, 0.0000, 22363.2000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (42, N'Opamp Technical Books', N'1033 N Sycamore Ave.', N'', N'Los Angeles', N'CA', N'90038', N'Paris', N'Gideon', N'(213) 555-4322', 3, 572, CAST(N'2022-03-28' AS Date), 700.0000, 0.0000, 1136.1700, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (43, N'Capital Resource Credit', N'PO Box 39046', N'', N'Minneapolis', N'MN', N'55439', N'Maxwell', N'Jayda', N'(612) 555-0057', 3, 589, CAST(N'2022-04-11' AS Date), 59.3800, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (44, N'Courier Companies, Inc', N'PO Box 5317', N'', N'Boston', N'MA', N'02206', N'Antavius', N'Troy', N'(508) 555-6351', 4, 400, CAST(N'2022-04-11' AS Date), 27462.5600, 0.0000, 29074.2500, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (45, N'Naylor Publications Inc', N'PO Box 40513', N'', N'Jacksonville', N'FL', N'32231', N'Gerald', N'Kristofer', N'(800) 555-6041', 3, 572, CAST(N'2022-04-11' AS Date), 99.5000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (46, N'Open Horizons Publishing', N'Book Marketing Update', N'PO Box 205', N'Fairfield', N'IA', N'52556', N'Damien', N'Deborah', N'(515) 555-6130', 2, 540, CAST(N'2022-04-11' AS Date), 94.0000, 0.0000, 60.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (47, N'Baker & Taylor Books', N'Five Lakepointe Plaza, Ste 500', N'2709 Water Ridge Parkway', N'Charlotte', N'NC', N'28217', N'Bernardo', N'Brittnee', N'(704) 555-3500', 3, 572, CAST(N'2022-04-27' AS Date), 531.2500, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (48, N'Fresno County Tax Collector', N'PO Box 1192', N'', N'Fresno', N'CA', N'93715', N'Brenton', N'Kila', N'(209) 555-3482', 3, 574, CAST(N'2022-04-27' AS Date), 378.8800, 0.0000, 678.5800, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (49, N'Mcgraw Hill Companies', N'PO Box 87373', N'', N'Chicago', N'IL', N'60680', N'Holbrooke', N'Rashad', N'(614) 555-3663', 3, 572, CAST(N'2022-04-27' AS Date), 70.4100, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (50, N'Publishers Weekly', N'Box 1979', N'', N'Marion', N'OH', N'43305', N'Carrollton', N'Priscilla', N'(800) 555-1669', 3, 572, CAST(N'2022-04-27' AS Date), 169.0000, 0.0000, 149.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (51, N'Blue Shield of California', N'PO Box 7021', N'', N'Anaheim', N'CA', N'92850', N'Smith', N'Kylie', N'(415) 555-5103', 3, 510, CAST(N'2022-05-08' AS Date), 720.0000, 0.0000, 939.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (52, N'Aztek Label', N'Accounts Payable', N'1150 N Tustin Ave', N'Aneheim', N'CA', N'92807', N'Griffin', N'Brian', N'(714) 555-9000', 3, 551, CAST(N'2022-05-24' AS Date), 267.0000, 0.0000, 813.7000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (53, N'Gary McKeighan Insurance', N'3649 W Beechwood Ave #101', N'', N'Fresno', N'CA', N'93711', N'Jair', N'Caitlin', N'(209) 555-2420', 3, 590, CAST(N'2022-05-24' AS Date), 4745.0000, 0.0000, 4990.1800, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (54, N'Ph Photographic Services', N'2384 E Gettysburg', N'', N'Fresno', N'CA', N'93726', N'Cheyenne', N'Kaylea', N'(209) 555-0765', 3, 540, CAST(N'2022-05-24' AS Date), 565.1500, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (55, N'Quality Education Data', N'PO Box 95857', N'', N'Chicago', N'IL', N'60694', N'Misael', N'Kayle', N'(800) 555-5811', 2, 540, CAST(N'2022-05-24' AS Date), 799.0900, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (56, N'Springhouse Corp', N'PO Box 7247-7051', N'', N'Philadelphia', N'PA', N'19170', N'Maeve', N'Clarence', N'(215) 555-8700', 3, 523, CAST(N'2022-05-29' AS Date), 1942.2500, 0.0000, 1215.5000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (57, N'The Windows Deck', N'117 W Micheltorena Top Floor', N'', N'Santa Barbara', N'CA', N'93101', N'Wood', N'Liam', N'(800) 555-3353', 3, 536, CAST(N'2022-05-29' AS Date), 2975.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (58, N'Fresno Rack & Shelving Inc', N'4718 N Bendel Ave', N'', N'Fresno', N'CA', N'93722', N'Baylee', N'Dakota', N'', 2, 523, CAST(N'2022-06-13' AS Date), 168.0900, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (59, N'Publishers Marketing Assoc', N'627 Aviation Way', N'', N'Manhatttan Beach', N'CA', N'90266', N'Walker', N'Jovon', N'(310) 555-2732', 3, 572, CAST(N'2022-06-13' AS Date), 175.0000, 0.0000, 120.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (60, N'The Mailers Guide Co', N'PO Box 1550', N'', N'New Rochelle', N'NY', N'10802', N'Lacy', N'Karina', N'', 3, 540, CAST(N'2022-06-13' AS Date), 69.0000, 0.0000, 59.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (61, N'American Booksellers Assoc', N'828 S Broadway', N'', N'Tarrytown', N'NY', N'10591', N'Angelica', N'Nashalie', N'(800) 555-0037', 3, 574, CAST(N'2022-06-28' AS Date), 775.0000, 0.0000, 175.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (62, N'Cmg Information Services', N'PO Box 2283', N'', N'Boston', N'MA', N'02107', N'Randall', N'Yash', N'(508) 555-7000', 3, 540, CAST(N'2022-06-28' AS Date), 194.5700, 0.0000, 399.8500, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (63, N'Lou Gentile''s Flower Basket', N'722 E Olive Ave', N'', N'Fresno', N'CA', N'93728', N'Anum', N'Trisha', N'(209) 555-6643', 1, 570, CAST(N'2022-06-28' AS Date), 74.3500, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (64, N'Texaco', N'PO Box 6070', N'', N'Inglewood', N'CA', N'90312', N'Oren', N'Grace', N'', 3, 582, CAST(N'2022-06-28' AS Date), 62.4800, 0.0000, 476.5000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (65, N'The Drawing Board', N'PO Box 4758', N'', N'Carol Stream', N'IL', N'60197', N'Mckayla', N'Jeffery', N'', 2, 551, CAST(N'2022-06-28' AS Date), 366.6500, 0.0000, 502.1300, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (66, N'Ascom Hasler Mailing Systems', N'PO Box 895', N'', N'Shelton', N'CT', N'06484', N'Lewis', N'Darnell', N'', 3, 532, CAST(N'2022-07-12' AS Date), 522.2100, 0.0000, 716.6600, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (67, N'Bill Jones', N'Secretary Of State', N'PO Box 944230', N'Sacramento', N'CA', N'94244', N'Deasia', N'Tristin', N'', 3, 589, CAST(N'2022-07-12' AS Date), 10.0000, 0.0000, 10.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (68, N'Computer Library', N'3502 W Greenway #7', N'', N'Phoenix', N'AZ', N'85023', N'Aryn', N'Leroy', N'(602) 547-0331', 3, 540, CAST(N'2022-07-12' AS Date), 196.2000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (69, N'Frank E Wilber Co', N'2437 N Sunnyside', N'', N'Fresno', N'CA', N'93727', N'Millerton', N'Johnathon', N'(209) 555-1881', 3, 532, CAST(N'2022-07-12' AS Date), 1934.7000, 0.0000, 1538.2400, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (70, N'Fresno Credit Bureau', N'PO Box 942', N'', N'Fresno', N'CA', N'93714', N'Braydon', N'Anne', N'(209) 555-7900', 2, 555, CAST(N'2022-07-12' AS Date), 2663.2600, 0.0000, 452.4700, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (71, N'The Fresno Bee', N'1626 E Street', N'', N'Fresno', N'CA', N'93786', N'Colton', N'Leah', N'(209) 555-4442', 2, 572, CAST(N'2022-07-12' AS Date), 751.8300, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (72, N'Data Reproductions Corp', N'4545 Glenmeade Lane', N'', N'Auburn Hills', N'MI', N'48326', N'Arodondo', N'Cesar', N'(810) 555-3700', 3, 400, CAST(N'2022-08-09' AS Date), 14624.8800, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (73, N'Executive Office Products', N'353 E Shaw Ave', N'', N'Fresno', N'CA', N'93710', N'Danielson', N'Rachael', N'(209) 555-1704', 2, 570, CAST(N'2022-08-09' AS Date), 405.4800, 0.0000, 1361.7800, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (74, N'Leslie Company', N'PO Box 610', N'', N'Olathe', N'KS', N'66061', N'Alondra', N'Zev', N'(800) 255-6210', 3, 570, CAST(N'2022-08-09' AS Date), 139.6700, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (75, N'Retirement Plan Consultants', N'6435 North Palm Ave, Ste 101', N'', N'Fresno', N'CA', N'93704', N'Edgardo', N'Salina', N'(209) 555-7070', 3, 589, CAST(N'2022-08-09' AS Date), 1660.0000, 0.0000, 1386.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (76, N'Simon Direct Inc', N'4 Cornwall Dr Ste 102', N'', N'East Brunswick', N'NJ', N'08816', N'Bradlee', N'Daniel', N'(908) 555-7222', 2, 540, CAST(N'2022-08-09' AS Date), 8662.5000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (77, N'State Board Of Equalization', N'PO Box 942808', N'', N'Sacramento', N'CA', N'94208', N'Dean', N'Julissa', N'(916) 555-4911', 1, 631, CAST(N'2022-08-09' AS Date), 2433.0000, 0.0000, 3606.8300, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (78, N'The Presort Center', N'1627 "E" Street', N'', N'Fresno', N'CA', N'93706', N'Marissa', N'Kyle', N'(209) 555-6151', 3, 540, CAST(N'2022-08-09' AS Date), 2377.4300, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (79, N'Valprint', N'PO Box 12332', N'', N'Fresno', N'CA', N'93777', N'Warren', N'Quentin', N'(209) 555-3112', 3, 551, CAST(N'2022-08-09' AS Date), 44995.7500, 0.0000, 19211.1200, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (80, N'Cardinal Business Media, Inc.', N'P O Box 7247-7844', N'', N'Philadelphia', N'PA', N'19170', N'Eulalia', N'Kelsey', N'(215) 555-1500', 2, 540, CAST(N'2022-08-23' AS Date), 2905.0000, 0.0000, 3867.7500, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (81, N'Wang Laboratories, Inc.', N'P.O. Box 21209', N'', N'Pasadena', N'CA', N'91185', N'Kapil', N'Robert', N'(800) 555-0344', 2, 160, CAST(N'2022-08-23' AS Date), 4343.7600, 0.0000, 24125.3800, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (82, N'Reiter''s Scientific & Pro Books', N'2021 K Street Nw', N'', N'Washington', N'DC', N'20006', N'Rodolfo', N'Carlee', N'(202) 555-5561', 2, 572, CAST(N'2022-08-28' AS Date), 600.0000, 0.0000, 600.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (83, N'Ingram', N'PO Box 845361', N'', N'Dallas', N'TX', N'75284', N'Yobani', N'Trey', N'', 2, 572, CAST(N'2022-09-10' AS Date), 4005.0000, 0.0000, 585.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (84, N'Boucher Communications Inc', N'1300 Virginia Dr. Ste 400', N'', N'Fort Washington', N'PA', N'19034', N'Carson', N'Julian', N'(215) 555-8000', 3, 540, CAST(N'2022-09-14' AS Date), 1150.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (85, N'Champion Printing Company', N'3250 Spring Grove Ave', N'', N'Cincinnati', N'OH', N'45225', N'Clifford', N'Jillian', N'(800) 555-1957', 3, 540, CAST(N'2022-09-14' AS Date), 10729.1400, 0.0000, 8095.2800, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (86, N'Computerworld', N'Department #1872', N'PO Box 61000', N'San Francisco', N'CA', N'94161', N'Lloyd', N'Angel', N'(617) 555-0700', 1, 572, CAST(N'2022-09-14' AS Date), 11664.5000, 0.0000, 2245.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (87, N'DMV Renewal', N'PO Box 942894', N'', N'Sacramento', N'CA', N'94294', N'Josey', N'Lorena', N'', 4, 568, CAST(N'2022-09-14' AS Date), 923.0000, 0.0000, 779.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (88, N'Edward Data Services', N'4775 E Miami River Rd', N'', N'Cleves', N'OH', N'45002', N'Helena', N'Jeanette', N'(513) 555-3043', 1, 540, CAST(N'2022-09-14' AS Date), 413.3600, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (89, N'Evans Executone Inc', N'4918 Taylor Ct', N'', N'Turlock', N'CA', N'95380', N'Royce', N'Hannah', N'', 1, 522, CAST(N'2022-09-14' AS Date), 394.5500, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (90, N'Wakefield Co', N'295 W Cromwell Ave Ste 106', N'', N'Fresno', N'CA', N'93711', N'Rothman', N'Nathanael', N'(209) 555-4744', 2, 170, CAST(N'2022-09-14' AS Date), 356.4800, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (91, N'McKesson Water Products', N'P O Box 7126', N'', N'Pasadena', N'CA', N'91109', N'Destin', N'Luciano', N'(800) 555-7009', 2, 570, CAST(N'2022-09-14' AS Date), 384.7100, 0.0000, 363.1300, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (92, N'Zip Print & Copy Center', N'PO Box 12332', N'', N'Fresno', N'CA', N'93777', N'Javen', N'Justin', N'(233) 555-6400', 2, 540, CAST(N'2022-09-14' AS Date), 5641.2100, 0.0000, 6186.2700, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (93, N'AT&T', N'PO Box 78225', N'', N'Phoenix', N'AZ', N'85062', N'Wesley', N'Alisha', N'', 3, 522, CAST(N'2022-09-16' AS Date), 15730.9700, 0.0000, 9231.3400, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (94, N'Abbey Office Furnishings', N'4150 W Shaw Ave', N'', N'Fresno', N'CA', N'93722', N'Francis', N'Kyra', N'(209) 555-8300', 2, 150, CAST(N'2022-09-19' AS Date), 5515.3500, 0.0000, 1385.0800, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (95, N'Pacific Bell', N'', N'                              .', N'Sacramento', N'CA', N'95887', N'Nickalus', N'Kurt', N'(209) 555-7500', 2, 522, CAST(N'2022-09-25' AS Date), 4711.7700, 0.0000, 4296.1200, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (96, N'Wells Fargo Bank', N'Business Mastercard', N'P.O. Box 29479', N'Phoenix', N'AZ', N'85038', N'Damion', N'Mikayla', N'(947) 555-3900', 2, 160, CAST(N'2022-09-25' AS Date), 1107.3100, 0.0000, 1394.6800, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (97, N'Compuserve', N'Dept L-742', N'', N'Columbus', N'OH', N'43260', N'Armando', N'Jan', N'(614) 555-8600', 2, 572, CAST(N'2022-09-26' AS Date), 109.4500, 0.0000, 145.9600, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (98, N'American Express', N'Box 0001', N'', N'Los Angeles', N'CA', N'90096', N'Story', N'Kirsten', N'(800) 555-3344', 2, 160, CAST(N'2022-09-28' AS Date), 28740.1000, 556.1900, 40780.8300, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (99, N'Bertelsmann Industry Svcs. Inc', N'28210 N Avenue Stanford', N'', N'Valencia', N'CA', N'91355', N'Potter', N'Lance', N'(805) 555-0584', 3, 400, CAST(N'2022-09-28' AS Date), 39420.5600, 0.0000, 42499.9400, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (100, N'Cahners Publishing Company', N'Citibank Lock Box 4026', N'8725 W Sahara Zone 1127', N'The Lake', N'NV', N'89163', N'Jacobsen', N'Samuel', N'(301) 555-2162', 4, 540, CAST(N'2022-09-28' AS Date), 2184.5000, 0.0000, 0.0000, 0.0000)
GO
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (101, N'California Business Machines', N'Gallery Plz', N'5091 N Fresno', N'Fresno', N'CA', N'93710', N'Rohansen', N'Anders', N'(209) 555-5570', 2, 170, CAST(N'2022-09-28' AS Date), 722.1600, 0.0000, 981.8300, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (102, N'Coffee Break Service', N'PO Box 1091', N'', N'Fresno', N'CA', N'93714', N'Smitzen', N'Jeffrey', N'(209) 555-8700', 4, 570, CAST(N'2022-09-28' AS Date), 706.9000, 0.0000, 816.5000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (103, N'Dean Witter Reynolds', N'9 River Pk Pl E 400', N'', N'Fresno', N'CA', N'93720', N'Johnson', N'Vance', N'(209) 555-7171', 5, 589, CAST(N'2022-09-28' AS Date), 29522.5000, 0.0000, 17967.5000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (104, N'Digital Dreamworks', N'5070 N Sixth Ste. 71', N'', N'Fresno', N'CA', N'93711', N'Elmert', N'Ron', N'', 3, 589, CAST(N'2022-09-28' AS Date), 5000.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (105, N'Dristas Groom & Mccormick', N'7112 N Fresno St Ste 200', N'', N'Fresno', N'CA', N'93720', N'Aaronsen', N'Thom', N'(209) 555-8484', 3, 591, CAST(N'2022-09-28' AS Date), 9082.0000, 0.0000, 8173.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (106, N'Ford Motor Credit Company', N'Dept 0419', N'', N'Los Angeles', N'CA', N'90084', N'Snyder', N'Karen', N'(800) 555-7000', 3, 582, CAST(N'2022-09-28' AS Date), 5535.2000, 0.0000, 6039.8100, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (107, N'Franchise Tax Board', N'PO Box 942857', N'', N'Sacramento', N'CA', N'94257', N'Prado', N'Anita', N'', 4, 507, CAST(N'2022-09-28' AS Date), 12632.5000, 0.0000, 800.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (108, N'Gostanian General Building', N'427 W Bedford #102', N'', N'Fresno', N'CA', N'93711', N'Bragg', N'Walter', N'(209) 555-5100', 4, 523, CAST(N'2022-09-28' AS Date), 450.0000, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (109, N'Kent H Landsberg Co', N'File No 72686', N'PO Box 61000', N'San Francisco', N'CA', N'94160', N'Stevens', N'Wendy', N'(916) 555-8100', 3, 540, CAST(N'2022-09-28' AS Date), 5711.1200, 0.0000, 1473.7000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (110, N'Malloy Lithographing Inc', N'5411 Jackson Road', N'PO Box 1124', N'Ann Arbor', N'MI', N'48106', N'Regging', N'Abe', N'(313) 555-6113', 3, 400, CAST(N'2022-09-28' AS Date), 213039.6500, 0.0000, 192213.0100, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (111, N'Net Asset, Llc', N'1315 Van Ness Ave Ste. 103', N'', N'Fresno', N'CA', N'93721', N'Kraggin', N'Laura', N'', 1, 572, CAST(N'2022-09-28' AS Date), 581.2100, 0.0000, 0.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (112, N'Office Depot', N'File No 81901', N'', N'Los Angeles', N'CA', N'90074', N'Pinsippi', N'Val', N'(209) 555-1711', 3, 570, CAST(N'2022-09-28' AS Date), 3916.9100, 0.0000, 4197.3400, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (113, N'Pollstar', N'4697 W Jacquelyn Ave', N'', N'Fresno', N'CA', N'93722', N'Aranovitch', N'Robert', N'(209) 555-2631', 5, 520, CAST(N'2022-09-28' AS Date), 17500.0000, 0.0000, 19750.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (114, N'Postmaster', N'Postage Due Technician', N'1900 E Street', N'Fresno', N'CA', N'93706', N'Finklestein', N'Fyodor', N'(209) 555-7785', 1, 552, CAST(N'2022-09-28' AS Date), 1875.0000, 0.0000, 1175.0000, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (115, N'Roadway Package System, Inc', N'Dept La 21095', N'', N'Pasadena', N'CA', N'91185', N'Smith', N'Sam', N'', 4, 553, CAST(N'2022-09-28' AS Date), 614.1500, 0.0000, 327.2300, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (116, N'State of California', N'Employment Development Dept', N'PO Box 826276', N'Sacramento', N'CA', N'94230', N'Articunia', N'Mercedez', N'(209) 555-5132', 1, 631, CAST(N'2022-09-28' AS Date), 22300.4600, 0.0000, 17568.5800, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (117, N'Suburban Propane', N'2874 S Cherry Ave', N'', N'Fresno', N'CA', N'93706', N'Spivak', N'Harold', N'(209) 555-2770', 3, 521, CAST(N'2022-09-28' AS Date), 61.9400, 0.0000, 32.3400, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (118, N'Unocal', N'P.O. Box 860070', N'', N'Pasadena', N'CA', N'91186', N'Bluzinski', N'Rachael', N'(415) 555-7600', 3, 582, CAST(N'2022-09-28' AS Date), 1870.2800, 0.0000, 1140.6700, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (119, N'Yesmed, Inc', N'PO Box 2061', N'', N'Fresno', N'CA', N'93718', N'Hernandez', N'Reba', N'(209) 555-0600', 2, 589, CAST(N'2022-09-28' AS Date), 48690.5100, 0.0000, 51420.0300, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (120, N'Dataforms/West', N'1617 W. Shaw Avenue', N'Suite F', N'Fresno', N'CA', N'93711', N'Church', N'Charlie', N'', 3, 551, CAST(N'2022-09-30' AS Date), 12108.4400, 0.0000, 13232.2200, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (121, N'Zylka Design', N'3467 W Shaw Ave #103', N'', N'Fresno', N'CA', N'93711', N'Ronaldsen', N'Jaime', N'(209) 555-8625', 3, 403, CAST(N'2022-09-30' AS Date), 30486.4400, 0.0000, 5311.4800, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (122, N'United Parcel Service', N'P.O. Box 505820', N'', N'Reno', N'NV', N'88905', N'Beauregard', N'Violet', N'(800) 555-0855', 3, 553, CAST(N'2022-10-02' AS Date), 93601.9900, 0.0000, 76238.9600, 0.0000)
INSERT Vendors (VendorID, VendorName, VendorAddress1, VendorAddress2, VendorCity, VendorState, VendorZipCode, VendorContactLName, VendorContactFName, VendorPhone, TermsID, AccountNo, LastTranDate, YTDPurchases, YTDReturns, LastYTDPurchases, LastYTDReturns) VALUES (123, N'Federal Express Corporation', N'P.O. Box 1140', N'Dept A', N'Memphis', N'TN', N'38101', N'Bucket', N'Charlie', N'(209) 555-4091', 3, 553, CAST(N'2022-10-05' AS Date), 29742.9800, 0.0000, 19893.6100, 0.0000)
SET IDENTITY_INSERT Vendors OFF
SET ANSI_PADDING ON
GO

-- add additional constraints to the tables
ALTER TABLE Vendors ADD  CONSTRAINT IX_VendorName UNIQUE NONCLUSTERED 
(
	VendorName ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) 
GO
ALTER TABLE Sample ADD  CONSTRAINT DF_Sample_Text  DEFAULT ('None') FOR Color
GO
ALTER TABLE Vendors ADD  CONSTRAINT DF_Vendors_TermsID  DEFAULT ((3)) FOR TermsID
GO
ALTER TABLE Vendors ADD  CONSTRAINT DF_Vendors_AccountNo  DEFAULT ((570)) FOR AccountNo
GO
ALTER TABLE Vendors ADD  CONSTRAINT DF_Vendors_YTDPurchases  DEFAULT ((0)) FOR YTDPurchases
GO
ALTER TABLE Vendors ADD  CONSTRAINT DF_Vendors_YTDReturns  DEFAULT ((0)) FOR YTDReturns
GO
ALTER TABLE Vendors ADD  CONSTRAINT DF_Vendors_LastYTDPurchases  DEFAULT ((0)) FOR LastYTDPurchases
GO
ALTER TABLE Vendors ADD  CONSTRAINT DF_Vendors_LastYTDReturns  DEFAULT ((0)) FOR LastYTDReturns
GO
ALTER TABLE SalesTotals  WITH CHECK ADD  CONSTRAINT FK_SalesTotals_SalesReps FOREIGN KEY(RepID)
REFERENCES SalesReps (RepID)
GO
ALTER TABLE SalesTotals CHECK CONSTRAINT FK_SalesTotals_SalesReps
GO
