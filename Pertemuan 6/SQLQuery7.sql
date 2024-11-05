-- soal 6
SELECT e.Name, em.Name, em.ManagerID FROM dbo.Employee e 
LEFT JOIN Employee em ON e.EmployeeID = em.ManagerID