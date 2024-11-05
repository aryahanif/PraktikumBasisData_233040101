-- soal 5
SELECT e.Name, p.ProjectName FROM dbo.Employee e 
CROSS JOIN dbo.Projects p;