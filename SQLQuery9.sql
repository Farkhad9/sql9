CREATE DATABASE CompanyDB;

CREATE TABLE Departments
(
    Id INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE Employees
(
    Id INT IDENTITY PRIMARY KEY,
    FullName NVARCHAR(150) NOT NULL,
    Age INT CHECK (Age >= 18),
    Salary DECIMAL(10,2) CHECK (Salary > 0),
    DepartmentId INT,
    HireDate DATE DEFAULT GETDATE(),

    CONSTRAINT FK_Employees_Departments
    FOREIGN KEY (DepartmentId) REFERENCES Departments(Id)
);
INSERT INTO Departments (Name)
VALUES 
('IT'),
(' HR'),

