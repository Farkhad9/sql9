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
('HR'),
('Finance'),
('Marketing');
INSERT INTO Employees (FullName, Age, Salary, DepartmentId)
VALUES
('Ali Mammadov', 25, 1200, 1),
('Nigar Aliyeva', 30, 1500, 1),
('Elvin Hasanov', 28, 1000, 2),
('Aysel Karimova', 35, 1800, 3),
('Murad Quliyev', 22, 900, 4);

