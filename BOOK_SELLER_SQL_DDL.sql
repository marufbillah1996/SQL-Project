CREATE DATABASE Book_Seller
ON
(
	NAME = BOOK_SELLER_DATA,
	FILENAME ='C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\BOOK_SELLER_DATA.mdf',
	SIZE =25MB,
	MAXSIZE =100MB,
	FILEGROWTH =5%
)
LOG ON
(
	NAME = BOOK_SELLER_LOG,
	FILENAME ='C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\BOOK_SELLER_LOG.ldf',
	SIZE =5MB,
	MAXSIZE =50MB,
	FILEGROWTH =1MB
)
GO
USE Book_Seller
GO
CREATE TABLE Authors
(
	AuthorID INT PRIMARY KEY,
	AuthorName VARCHAR(30) NOT NULL,
	AuAddress VARCHAR(30) NULL
)
GO
CREATE TABLE Genres
(
	GenreID INT PRIMARY KEY,
	GenreName NVARCHAR(30) NOT NULL
)
GO
CREATE TABLE Publishers
(
	PublisherID INT PRIMARY KEY,
	PublisherName VARCHAR(30) NOT NULL
)
GO
CREATE TABLE Books
(
	BookID INT PRIMARY KEY ,
	Title VARCHAR(30) NOT NULL,
	GenreID INT REFERENCES Genres (GenreID),
	Price MONEY NOT NULL,
	PublishDateNo DATE NULL,
	PublisherID INT REFERENCES Publishers(PublisherID)
)
GO
CREATE TABLE BookAuthors
(
	AuthorID INT REFERENCES Authors(AuthorID),
	BookID INT REFERENCES Books(BookID),
	PRIMARY KEY (AuthorID,BookID)
)
GO
CREATE TABLE Customers
(
	CustomersID INT PRIMARY KEY,
	CustomersName VARCHAR(30) NOT NULL
)
GO
CREATE TABLE Sales
(
	SaleID INT PRIMARY KEY,
	CustomersID INT REFERENCES Customers (CustomersID)
)
GO
CREATE TABLE SalesDetails
(
	SalesID INT REFERENCES Sales(SaleID),
	BookID INT REFERENCES Books(BookID),
	NumberOfStock  INT NOT NULL,
	PRIMARY KEY (SalesID,BookID)
)
GO
--CREATE PROC insertbook @id INT ,@title NVARCHAR(50),@price MONEY,@publishdate DATE
--AS
--	BEGIN TRY
--		INSERT INTO Books
--		VALUES(@id,@title,@price,@publishdate)
--	END TRY
--	BEGIN CATCH
--		DECLARE @msg VARCHAR(500)
--		SET @msg=ERROR_MESSAGE()
--		RAISERROR(@msg, 11, 1)
--	END CATCH
--GO
--CREATE PROC updatebook @id INT ,@title NVARCHAR(50),@price MONEY,@publishdate DATE
--AS
--	BEGIN TRY
--		UPDATE Books
--		SET Title=@title,PublishDateNo=@publishdate
--		WHERE BookID=@id
--	END TRY
--	BEGIN CATCH
--		DECLARE @msg VARCHAR(500)
--		SET @msg=ERROR_MESSAGE()
--		;
--		THROW 50001,@msg,11
--	END CATCH
--GO
--CREATE PROC deletebook @id INT
--AS
--	BEGIN TRY
--		DELETE Books
--		WHERE BookID=@id
--	END TRY
--	BEGIN CATCH
--		DECLARE @msg VARCHAR(500)
--		SET @msg=ERROR_MESSAGE()
--		;
--		THROW 50001,@msg,11
--	END CATCH
--GO
--USE master
--GO 
--DROP DATABASE Book_Seller