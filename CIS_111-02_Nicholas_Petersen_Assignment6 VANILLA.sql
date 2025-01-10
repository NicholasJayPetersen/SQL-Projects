--CIS_111_02_Nicholas_Petersen_Assignment6

CREATE DATABASE FamilyReunion;
GO

USE FamilyReunion;
--_______________________________________________________________________________________________


--Create tables to store family members and link them to a family

--groups members together to form families
CREATE TABLE Families (
	FamilyID	int				NOT NULL PRIMARY KEY,
	Surname		varchar(255)	NOT NULL
);

--accepts multiple family members and assigns an id
CREATE TABLE Members(
	MemberID	int				NOT NULL PRIMARY KEY IDENTITY,
	MemberName	varchar(255)	NOT NULL,
	FamilyPos	char(1)			NOT NULL,
	Alergies	varchar(100)			,
	FamilyID	int				NOT NULL,

	FOREIGN KEY (FamilyID) REFERENCES Families(FamilyID)
);


--links contact information from the form to that family
CREATE TABLE MemberContacts(
	ContactID	int				NOT NULL PRIMARY KEY IDENTITY,
	FamilyID	int				NOT NULL,
	Phone		varchar(15)				,
	Email		varchar(255)	NOT NULL UNIQUE,
	Street		varchar(255)	NOT NULL,
	City		varchar(255)	NOT NULL,
	State		char(2)			NOT NULL,
	Zip			varchar(11)		NOT NULL,

	FOREIGN KEY (FamilyID) REFERENCES Families(FamilyID)
);

--_______________________________________________________________________________________________


--Create tables to store facilites and locations

--Crate a uniqie facility with locationID
CREATE TABLE Facilities(
	LocationID		int				NOT NULL PRIMARY KEY IDENTITY,
	LocationName	varchar(50)		NOT NULL,
	LocationDesc	varchar(1000)	NOT NULL,
	Street			varchar(255)	NOT NULL,
	City			varchar(255)	NOT NULL,
	State			char(2)			NOT NULL

);


--List of reunion details with the locationID from previous table
CREATE TABLE ScheduledReunions(
	ReunionID		int				NOT NULL PRIMARY KEY IDENTITY,
	ReunionDate		datetime2		NOT NULL,
	LocationID		int				NOT NULL,
	FoodProvided	bit				NOT NULL DEFAULT 0,
	DrinkProvided	bit				NOT NULL DEFAULT 0,
	SingleCost		decimal(6,2)	NOT NULL,
	FamilyCost		decimal(6,2)	NOT NULL,

	FOREIGN KEY (LocationID) References Facilities(LocationID)
);

--_________________________________________________________________________________________________


--Create tables to store attendance and payment
CREATE TABLE AttendingFamilies(
	FamilyID		int				NOT NULL,
	ReunionID		int				NOT NULL,
	Adults			int				NOT NULL,
	Children		int				NOT NULL,
	DatePaid		datetime2		NOT NULL DEFAULT GETDATE(),
	Fee				decimal(10,2)	NOT NULL,

	FOREIGN KEY (FamilyID) REFERENCES Families(FamilyID),
	FOREIGN KEY (ReunionID) REFERENCES ScheduledReunions(ReunionID)
);