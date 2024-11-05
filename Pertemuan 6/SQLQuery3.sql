-- soal 2
SELECT e.name, p.ProjectName FROM dbo.Employee e
LEFT JOIN dbo.Departments d ON e.DepartmentsID = d.DepartmentsID LEFT JOIN dbo.Projects p ON d.DepartmentsID = p.DepartmentsID