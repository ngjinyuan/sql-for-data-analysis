CREATE VIEW V_Orders AS 
SELECT
	DATE(o.CreationDate) AS 'OrderDate',
	CONCAT(s.FirstName, ' ', s.LastName) AS 'Salesperson',
	COUNT(o.OrderID) AS 'Amount of Orders',
	SUM(o.TotalDue) AS 'Total Due'
FROM Orders AS o
INNER JOIN Salesperson AS s
ON o.SalespersonID = s.SalespersonID
GROUP BY Salesperson;
-- ORDER BY OrderDate;