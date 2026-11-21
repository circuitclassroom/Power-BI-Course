/* Circuit Classroom - Power BI Course, Episode 2
   Creates the practice database used in the "Connect to SQL Server" demo.
   Run in SQL Server Management Studio (SSMS) on a local SQL Server or SQL Server Express.
   The data is made up for learning. Product names match the Product column in Sales_Data_Ep1.xlsx. */

IF DB_ID(N'CircuitClassroomDB') IS NULL
    CREATE DATABASE CircuitClassroomDB;
GO

USE CircuitClassroomDB;
GO

DROP TABLE IF EXISTS dbo.Products;
GO

CREATE TABLE dbo.Products (
    ProductID   INT           NOT NULL PRIMARY KEY,
    ProductName NVARCHAR(50)  NOT NULL,
    Category    NVARCHAR(30)  NOT NULL,
    UnitPrice   DECIMAL(10,2) NOT NULL
);
GO

INSERT INTO dbo.Products (ProductID, ProductName, Category, UnitPrice) VALUES
    (1, N'Laptop', N'Electronics', 55000.00),
    (2, N'Smartphone', N'Electronics', 28000.00),
    (3, N'Headphones', N'Electronics', 3500.00),
    (4, N'Office Chair', N'Furniture', 9500.00),
    (5, N'Standing Desk', N'Furniture', 18000.00),
    (6, N'Bookshelf', N'Furniture', 6500.00),
    (7, N'Notebook Pack', N'Stationery', 450.00),
    (8, N'Pen Set', N'Stationery', 300.00),
    (9, N'Printer Paper', N'Stationery', 650.00);
GO

SELECT * FROM dbo.Products;
GO
