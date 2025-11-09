DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price DECIMAL(10, 2),
    Stock INT
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
  Customer_ID SERIAL PRIMARY KEY,
  Name VARCHAR(100),
  Email VARCHAR(100),
  Phone VARCHAR(15),
  City VARCHAR(50),
  Country VARCHAR(150)
);

DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT,
    Book_ID INT,
    Order_Date DATE,
    Quantity INT,
    Total_Amount DECIMAL(10, 2),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;


--1) RETRIEVE ALL BOOKS IN THE "FICTION" GENRE:
SELECT * FROM BOOKS 
WHERE genre = 'Fiction';

--2) find books published after the year 1950:
SELECT * FROM BOOKS
WHERE published_year > 1950;

--3) LIST ALL CUSTOMERS FROM THE CANADA;
SELECT * FROM Customers
WHERE country = 'Canada';

--4) SHOW ORDERS PLACED IN NOVEMBER 2023:
SELECT * FROM Orders
WHERE order_date BETWEEN'2023-11-01' AND '2023-11-30';

--5) RETRIEVE THE TOTAL STOCK OF BOOKS AVAILABLE:
SELECT SUM(stock)
FROM BOOKS;

--6) FIND THE DETAILS OF THE MOST EXPENSIVE BOOK:
SELECT * FROM Books
ORDER BY price DESC
LIMIT 1;

--7) SHOW ALL CUSTOMERS WHO ORDERED MORE THAN 1 QUANTITY OF A BOOK:
SELECT * FROM Orders
WHERE quantity > 1;

--8) RETRIEVE ALL ORDERS WHERE THE TOTAL AMOUNT EXCEEDS $20:
SELECT * FROM Orders
WHERE total_amount > 20;

--9) LIST ALL GENRES AVAILABLE IN THE BOOKS TABLE:
SELECT DISTINCT(genre) AS Total_count
FROM Books;

--10)FIND THE BOOK WITH THE LOWEST STOCK:
SELECT * FROM Books
ORDER BY stock ASC 
LIMIT 1;

--11) CALCULATE THE TOTAL REVENUE GENERATED FROM ALL ORDERS:
SELECT SUM(total_amount) AS total_revenue
FROM Orders;


-- ADVANCE QUESTIONS--
--1) RETRIEVE THE TOTAL NO OF BOOKS SOLD FOR EACH GENRE:
SELECT b.genre , SUM(o.quantity) AS Total_books_sold
FROM Books b 
JOIN Orders o
ON b.book_id = o.book_id
GROUP BY b.genre;

--2) FIND THE AVG PRICE OF BOOKS IN THE FANTADY GENRE:
SELECT AVG(price) AS Average_price
FROM Books 
WHERE genre = 'Fantasy';

--3) LIST CUSTOMERS WHO HAVE PLACED AT LEAST 2 ORDERS:
SELECT c.customer_id ,c.name, count(o.order_id) AS order_count
FROM Orders o
JOIN Customers c
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
HAVING COUNT(order_id)>=2;

--4) FIND THE MOST FREQUENTLY ORDERED BOOK:
SELECT o.Book_id, b.title, COUNT(o.order_id) AS order_count
FROM Orders o
JOIN Books b
ON b.book_id = o.book_id
GROUP BY o.Book_id, b.title
ORDER BY order_count DESC LIMIT 1;

--5) show the top 3 most expensive books of 'Fantasy' genre:
SELECT * FROM Books
WHERE genre = 'Fantasy'
ORDER BY price desc
LIMIT 3;

--6) RETRIEVE THE TOTAL QUANTITY OF BOOKS SOLD BY EACH AUTHOR:
SELECT b.author, sum(o.quantity) AS total_books_sold
FROM Books b
JOIN Orders o
ON b.book_id = o.book_id
GROUP BY b.author;

--7) LIST THE CITIES WHERE CUSTOMERS WHO SPENT OVER $30 ARE LOCATED:
SELECT DISTINCT c.city , o.total_amount
FROM Orders o
JOIN Customers c
ON o.customer_id = c.customer_id
WHERE o.total_amount > 30;

--8) FIND THE CUSTOMER WHO SPENT THE MOST OF ORDERS:
SELECT c.customer_id, c.name, SUM(o.total_amount) AS Total_spent
FROM Orders o
JOIN Customers c 
ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.name
ORDER BY Total_spent DESC
LIMIT 1;

--9) CALCULATE THE STOCK REMAINING AFTER FULFILING ALL ORDERS:
SELECT b.book_id,  b.title, b.stock, COALESCE(SUM(o.quantity),0) AS Order_quantity,
b.stock - COALESCE(SUM(o.quantity),0) AS Remaining_quantity
FROM Books b 
LEFT JOIN Orders o
ON b.book_id = o.book_id
GROUP BY b.book_id 
ORDER BY b.book_id;













