-- soal 7
SELECT e.Name, d.DepartmentName FROM dbo.Employee e
JOIN dbo.Departments d ON e.DepartmentsID = d.DepartmentsID