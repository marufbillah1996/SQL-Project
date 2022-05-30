USE Book_Seller
GO
INSERT INTO Authors VALUES 
(1,'HUMAYUN AHMED','Mymensingh'),
(2,'MUHAMMED ZAFAR IQBAL','Sylhet'),
(3,'RABINDRANATH TAGORE','Calcutta'),
(4,'IMDADUL HAQUE MILON','Bikrampur')
GO
INSERT INTO Genres VALUES
(1,'Biographical'),
(2,'Family Life'),
(3,'Historical'),
(4,'Science Fiction'),
(5,'Religious & Inspirational')
GO
INSERT INTO Publishers VALUES
(1,'ANANNYA'),
(2,'OBOSHOR'),
(3,'ANUPAM PROKASHONI'),
(4,'KAKOLI PROKASHONI'),
(5,'BIDDYAPROKASH')
GO
INSERT INTO Books VALUES
(1,'Himur Rupali Ratri',2 ,200.00 ,'1998-01-01',3 ),
(2,'Mohakashe Mohatrash',4,180.00,'1992-06-01',2),
(3,'Ghore Baire',5,120.00,'1996-02-01',5),
(4,'Jotodure Jai',1,100.00,'1988-04-03',2),
(5,'Noukadubi',3,160.00,'1999-06-04',1),
(6,'Golpoguccho',2,199.00,'1991-01-06',3),
(7,'Pret',4,250.00,'2006-02-03',5),
(8,'Chotoder Prio adventure',4,300.00,'2000-07-06',4),
(9,'Project Nebula',4,160.00,'2001-06-13',1),
(10,'Surjer Din',3,180.00,'1997-01-01',3)
GO
INSERT INTO BookAuthors VALUES
(1,1),(1,10),(2,2),(2,7),(2,9),(3,3),(3,6),(3,5),(4,8),(4,4)
GO
INSERT INTO Customers VALUES
(1,'MARUF'),(2,'SAKIB'),(3,'NUR'),(4,'ASIF'),
(5,'ANIKA'),(6,'TABASSUM'),(7,'JOBAIDA'),(8,'MOU'),
(9,'SHORIF'),(10,'MAHIDUL'),(11,'ATIK'),(12,'SHOAIB'),
(13,'ABDUR'),(14,'MUSFIQUE'),(15,'HASAN')
GO
INSERT INTO Sales VALUES
(1,1),(2,4),(3,7),(4,9),(5,6),(6,3),
(7,2),(8,5),(9,8),(10,12),(11,14),(12,11),
(13,13),(14,15),(15,10)
GO
INSERT INTO SalesDetails VALUES 
(1,6,5),(2,10,4),(3,5,3),(4,1,6),(5,10,4),(6,4,5),(7,6,4),
(8,8,3),(9,9,2),(10,1,3),(11,3,4),(12,9,2),(13,3,6),
(14,4,2),(15,7,1)
GO
SELECT * FROM Authors
SELECT * FROM Genres
SELECT * FROM Publishers
SELECT * FROM Books
SELECT * FROM BookAuthors
SELECT * FROM Customers
SELECT * FROM Sales
SELECT * FROM SalesDetails
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