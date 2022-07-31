CREATE TABLE Customers(
  Id INTEGER PRIMARY KEY AUTOINCREMENT,
  Name NVARCHAR(30) NOT NULL);
  
CREATE TABLE Orders(
  Id INTEGER PRIMARY KEY AUTOINCREMENT,
  CustomerId INTEGER"Orders_Customers_NO ACTION_NO ACTION_CustomerId_Id_0",
  FOREIGN KEY (CustomerId)  REFERENCES Customers (Id));
  
INSERT INTO Customers(Name)
VALUES
('Max'),
('Pavel'),
('Ivan'),
('Leonid');

INSERT INTO Orders(CustomerId)
VALUES
(2),
(4);

SELECT Customers.Name AS Customers FROM 
Customers LEFT JOIN Orders ON Customers.Id=Orders.CustomerId
WHERE Orders.Id ISNULL;