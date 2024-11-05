-- soal 1
SELECT Name, dbo.Departments.DepartmentName FROM dbo.Employee 
JOIN dbo.Departments ON dbo.Departments.DepartmentsID = dbo.Employee.DepartmentsID