use Moja_baza;
/*
INSERT INTO dbo.Level1
   ([Id],[PlayerId],[ThingsId])
VALUES
	 ( 1, 1, 1)
GO

SELECT * FROM dbo.Level1,dbo.Things WHERE dbo.Level1.ThingsId = dbo.Things.thingsId;
GO


    
ALTER TABLE dbo.Level1     
ADD CONSTRAINT FK_Level1_Player  FOREIGN KEY (PlayerId)     
    REFERENCES dbo.Player (playerId)     
    ON DELETE CASCADE    
    ON UPDATE CASCADE    
;    
GO  

ALTER TABLE dbo.Level1     
ADD CONSTRAINT FK_Level1_Things  FOREIGN KEY (ThingsId)     
    REFERENCES dbo.Things (thingsId)     
    ON DELETE CASCADE    
    ON UPDATE CASCADE    
;    
GO 

IF OBJECT_ID('dbo.Level1', 'U') IS NOT NULL -- to jest super bo jak sie pomyle to tworzy na nowo

DROP TABLE dbo.Level1
GO

CREATE TABLE dbo.Level1
(
   Id			 INT    NOT NULL   PRIMARY KEY, -- primary key column
   PlayerId      INT  NOT NULL, --foreign key zdefiniowac
   ThingsId		 INT NOT NULL --tu tez

);
GO

/*
INSERT INTO dbo.Things
   ([thingsId],[color],[points],[extra_time])
VALUES
	 ( 1, N'White', 100, 5),
	  ( 2, N'Yellow', 200, 10),
	   ( 3, N'Red', 500, 15),
	    ( 4, N'Blue', 300, 15),
		 ( 5, N'Pink', 1000, 30),
		  ( 6, N'Green', 50, 5)
GO


SELECT * FROM dbo.Things


/*
IF OBJECT_ID('dbo.Things', 'U') IS NOT NULL -- to jest super bo jak sie pomyle to tworzy na nowo

DROP TABLE dbo.Things
GO

CREATE TABLE dbo.Things
(
   thingsId        INT    NOT NULL   PRIMARY KEY, -- primary key column
   color      [NVARCHAR](50)  NOT NULL,
   points INT NOT NULL,
   extra_time INT
);
GO

INSERT INTO dbo.Things
   ([thingsId],[color],[points],[extra_time])
VALUES
	 ( 1, N'White', 100, 5),
	  ( 2, N'Yellow', 200, 10),
	   ( 3, N'Red', 500, 15),
	    ( 4, N'Blue', 300, 15),
		 ( 5, N'Pink', 1000, 30),
		  ( 6, N'Green', 50, 5)
GO
SELECT * FROM dbo.Things

--creates database
USE master
GO
IF NOT EXISTS (
   SELECT name
   FROM sys.databases
   WHERE name = N'Moja_baza'
)
CREATE DATABASE [Moja_baza]
GO

*/
IF OBJECT_ID('dbo.Player', 'U') IS NOT NULL
DROP TABLE dbo.Player
GO
-- Create the table in the specified schema
CREATE TABLE dbo.Player
(
   playerId        INT    NOT NULL   PRIMARY KEY, -- primary key column
   name      [NVARCHAR](50)  NOT NULL,
   total_time  INT  NOT NULL,
   total_tries     INT  NOT NULL,
   max_score	INT NOT NULL,
   lifes_left	INT NOT NULL
);
GO

-- Insert rows into table 'Customers'
INSERT INTO dbo.Player
   ([playerId],[name],[total_time],[total_tries],[max_score],[lifes_left])
VALUES
	 ( 1, N'Test', 0, 0, 0, 3)
GO
