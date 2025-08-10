CREATE TABLE Author ( 
author_id INT PRIMARY KEY, 
author_name VARCHAR(30), 
nationality VARCHAR(30) 
); 
CREATE TABLE Book ( 
book_id INT PRIMARY KEY, 
title VARCHAR(50), 
author_id INT, 
FOREIGN KEY (author_id) REFERENCES Author(author_id) 
); 
INSERT INTO Author (author_id, author_name, nationality) 
VALUES 
(1, 'Gunjan', 'India'), 
(2, 'Shaurya', 'India'), 
(3, 'Manan', 'India'), 
(4, 'Rohit', 'Japan'), 
(5, 'Virat', 'India'); 
INSERT INTO Book (book_id, title, author_id) 
VALUES 
(1001, 'Advanced Data Structures', 1), 
(1002, 'C++ Programming', 2), 
(1003, 'Operating System', 1), 
(1004, 'System Design', 4), 
(1005, 'Mathematics', 5); 
SELECT * FROM Author; 
SELECT * FROM Book; 
SELECT  
A.author_id AS [Author ID], 
A.author_name AS [Author Name], 
A.nationality, 
B.book_id AS [Book ID], 
  B.title AS [Book Title] 
FROM Author A 
JOIN Book B ON A.author_id = B.author_id; 
 
1.2 
 
CREATE TABLE Employees ( 
    EmpID INT PRIMARY KEY, 
    EName VARCHAR(50), 
    Department VARCHAR(50), 
    ManagerID INT 
); 
 
ALTER TABLE Employees  
ADD CONSTRAINT fKey FOREIGN KEY (ManagerID) REFERENCES Employees(EmpID); 
 
INSERT INTO Employees VALUES  
    (1, 'Aniket', 'EE', NULL),  
    (2, 'Himanshu', 'ECE', 1), 
    (3, 'Gunjan', 'CSE', 1), 
    (4, 'Shaurya', 'CSE', 3), 
    (5, 'Rahul', 'ME', 2), 
    (6, 'Navneet', 'ECE', 3); 
 
SELECT A.EName AS [Employee Name],  
       B.EName AS [Manager Name] 
FROM Employees AS A 
LEFT OUTER JOIN Employees AS B 
    ON A.ManagerID = B.EmpID;