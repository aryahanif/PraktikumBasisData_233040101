SELECT 
    EmpID,
    FirstName,
    LastName,
    TitleOfCourtesy,
    CASE 
        WHEN TitleOfCourtesy = 'Ms.' THEN 'Female'
        WHEN TitleOfCourtesy = 'Mrs.' THEN 'Female'
        WHEN TitleOfCourtesy = 'Mr.' THEN 'Male'
        ELSE 'Unknown' 
    END AS Gender
FROM 
    HR.Employees;