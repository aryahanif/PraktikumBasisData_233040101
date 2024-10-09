SELECT 
    c.CustID AS CustID,
    COUNT(o.OrderID) AS NumOrders,
    SUM(od.Qty) AS TotalQty
FROM 
    Sales.Customers c
LEFT JOIN 
    Sales.Orders o ON c.CustID = o.CustID  
LEFT JOIN 
    Sales.OrderDetails od ON o.OrderID = od.OrderID
WHERE 
    c.Country = 'USA'  
GROUP BY 
    c.CustID
ORDER BY 
    c.CustID;
