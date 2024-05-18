-- Create a temporary table for the top 5 item types by sales
CREATE TEMPORARY TABLE TopItemTypes AS
SELECT Item_Type
FROM sales_prediction
GROUP BY Item_Type
ORDER BY SUM(Item_Outlet_Sales) DESC
LIMIT 5;

SELECT Outlet_Identifier, AVG(Item_Outlet_Sales) AS Average_Sales
FROM sales_prediction
WHERE Item_Type IN (SELECT Item_Type FROM TopItemTypes)
GROUP BY Outlet_Identifier
ORDER BY Average_Sales DESC
LIMIT 1000;

-- Drop the temporary table if no longer needed
DROP TEMPORARY TABLE TopItemTypes;
