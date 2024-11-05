
CREATE TABLE Departments (
    DepartmentsID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Projects (
    ProjectsID INT PRIMARY KEY,
    ProjectName VARCHAR(50),
    DepartmentsID INT,
    FOREIGN KEY (DepartmentsID) REFERENCES Departments(DepartmentsID)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentsID INT,
    ManagerID INT,
    FOREIGN KEY (DepartmentsID) REFERENCES Departments(DepartmentsID)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE Salaries (
    EmployeeID INT,
    Salaries DECIMAL(10, 2),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);



-- Menambah data ke tabel Departments
INSERT INTO Departments (DepartmentsID, DepartmentName) VALUES (1, 'IT');
INSERT INTO Departments (DepartmentsID, DepartmentName) VALUES (2, 'HR');
INSERT INTO Departments (DepartmentsID, DepartmentName) VALUES (3, 'DEV');

-- Menambah data ke tabel Projects
INSERT INTO Projects (ProjectsID, ProjectName, DepartmentsID) VALUES (1, 'Project A', 1);
INSERT INTO Projects (ProjectsID, ProjectName, DepartmentsID) VALUES (2, 'Project B', 1);
INSERT INTO Projects (ProjectsID, ProjectName, DepartmentsID) VALUES (3, 'Project C', 1);
INSERT INTO Projects (ProjectsID, ProjectName, DepartmentsID) VALUES (4, 'Project D', 1);
INSERT INTO Projects (ProjectsID, ProjectName, DepartmentsID) VALUES (5, 'Project E', 2);
INSERT INTO Projects (ProjectsID, ProjectName, DepartmentsID) VALUES (6, 'Project F', 2);
INSERT INTO Projects (ProjectsID, ProjectName, DepartmentsID) VALUES (7, 'Project G', 2);
INSERT INTO Projects (ProjectsID, ProjectName, DepartmentsID) VALUES (8, 'Project H', 2);
INSERT INTO Projects (ProjectsID, ProjectName, DepartmentsID) VALUES (9, 'Project I', 3);
INSERT INTO Projects (ProjectsID, ProjectName, DepartmentsID) VALUES (10, 'Project J', 3);

-- Menambah data ke tabel Employee
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (1, 'Alice', 1, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (2, 'Bob', 1, 1);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (3, 'Asep', 1, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (4, 'Jarwo', 1, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (5, 'Sepongebob', 1, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (6, 'Finn', 1, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (7, 'Jake', 1, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (8, 'Sopo', 1, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (9, 'Adit', 1, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (10, 'Petrik', 1, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (11, 'Squidward', 1, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (12, 'Jonny', 1, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (13, 'Coco', 1, 2);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (14, 'Rendy', 2, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (15, 'Buzz', 2, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (16, 'Woody', 2, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (17, 'Fiona', 2, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (18, 'Cake', 2, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (19, 'Upin', 2, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (20, 'Charlie', 2, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (21, 'Bakwan', 2, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (22, 'Cakue', 2, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (23, 'Miku', 3, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (24, 'Komi', 3, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (25, 'Belle', 3, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (26, 'Lumine', 3, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (27, 'Saitama', 3, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (28, 'Stelle', 3, 3);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (29, 'Chaplin', 3, NULL);
INSERT INTO Employee (EmployeeID, Name, DepartmentsID, ManagerID) VALUES (30, 'Rudy', 3, NULL);

-- Menambah data ke tabel Salaries
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (1, 5000.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (2, 4500.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (3, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (4, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (5, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (6, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (7, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (8, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (9, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (10, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (11, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (12, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (13, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (14, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (15, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (16, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (17, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (18, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (19, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (20, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (21, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (22, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (23, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (24, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (25, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (26, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (27, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (28, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (29, 4800.00);
INSERT INTO Salaries (EmployeeID, Salaries) VALUES (30, 4800.00);







-- dpaatment 5, emp dan salary 30, projek 10, 
-- delete table, childnya(yg ada foreign key) dulu

-- BEGIN TRAN
-- DROP TABLE Projects;
-- ROLLBACK