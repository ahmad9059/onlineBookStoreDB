-- Fetch books with price greater than 1000
SELECT * FROM Books
WHERE Price > 1000;

-- Fetch books in 'Fiction' category priced between 500 and 2000
SELECT * FROM Books
WHERE CategoryID = 1 AND Price BETWEEN 500 AND 2000;

-- Fetch books with title containing the word 'Python'
SELECT * FROM Books
WHERE Title LIKE '%Python%';

-- Fetch users who registered after a specific date
SELECT * FROM Users
WHERE CreatedAt > '2025-01-01';


-- Fetch the top 5 most expensive books
SELECT TOP 5 * FROM Books
ORDER BY Price DESC;


-- Fetch books sorted by title alphabetically
SELECT * FROM Books
ORDER BY Title ASC;

-- Fetch books sorted by price in descending order
SELECT * FROM Books
ORDER BY Price DESC;


-- Get the total number of books
SELECT COUNT(*) AS TotalBooks FROM Books;

-- Get the average price of books
SELECT AVG(Price) AS AveragePrice FROM Books;

-- Get the maximum price of any book
SELECT MAX(Price) AS MaxPrice FROM Books;

-- Get the total revenue from all orders (sum of order totals)
SELECT SUM(TotalAmount) AS TotalRevenue FROM Orders;


-- Get the number of books in each category
SELECT CategoryID, COUNT(*) AS NumberOfBooks
FROM Books
GROUP BY CategoryID;

-- Get the total amount spent by each user
SELECT UserID, SUM(TotalAmount) AS TotalSpent
FROM Orders
GROUP BY UserID;


-- Get categories where the total number of books is greater than 5
SELECT CategoryID, COUNT(*) AS NumberOfBooks
FROM Books
GROUP BY CategoryID
HAVING COUNT(*) > 5;

-- Get users who have spent more than 1000 in total
SELECT UserID, SUM(TotalAmount) AS TotalSpent
FROM Orders
GROUP BY UserID
HAVING SUM(TotalAmount) > 1000;



-- Update the price of a book with BookID 5
UPDATE Books
SET Price = 1200
WHERE BookID = 5;


-- Add a new column for the Publisher in the Books table
ALTER TABLE Books
ADD Publisher VARCHAR(100);

-- Change the data type of the Price column to DECIMAL(15,2)
ALTER TABLE Books
ALTER COLUMN Price DECIMAL(15,2);


-- Remove all records from the Cart table
TRUNCATE TABLE Cart;


-- Get all orders with the corresponding book details
SELECT Orders.OrderID, Books.Title, Orders.OrderDate, OrderItems.Quantity
FROM Orders
INNER JOIN OrderItems ON Orders.OrderID = OrderItems.OrderID
INNER JOIN Books ON OrderItems.BookID = Books.BookID;

SELECT * FROM Orders;
SELECT * FROM Books;
SELECT * from OrderItems



-- Get all users and their cart details (even if the user has no cart items)
SELECT Users.UserID, Users.Name, Cart.BookID, Cart.Quantity
FROM Users
RIGHT JOIN Cart ON Users.UserID = Cart.UserID;


-- Get all cart items and their respective users
SELECT Users.Name, Books.Title, Cart.Quantity
FROM Cart
RIGHT JOIN Users ON Cart.UserID = Users.UserID
RIGHT JOIN Books ON Cart.BookID = Books.BookID;


-- Get all orders and their corresponding books, including orders without books and books without orders
SELECT Orders.OrderID, Books.Title, Orders.OrderDate
FROM Orders
FULL OUTER JOIN OrderItems ON Orders.OrderID = OrderItems.OrderID
FULL OUTER JOIN Books ON OrderItems.BookID = Books.BookID;


-- Get the names of all users and books (both are string-based)
SELECT Name FROM Users
UNION
SELECT Title FROM Books;