-- Step 1: Identify Outlet_Identifiers with total sales greater than 100000
CREATE TEMPORARY TABLE Temp_Outlets AS
SELECT Outlet_Identifier
FROM sales_prediction
GROUP BY Outlet_Identifier
HAVING SUM(Item_Outlet_Sales) > 100000;

-- Step 2: Use the identified Outlet_Identifiers to filter the main query
SELECT Item_Fat_Content, SUM(Item_Outlet_Sales) AS Total_Sales
FROM sales_prediction
WHERE Outlet_Identifier IN (SELECT Outlet_Identifier FROM Temp_Outlets)
GROUP BY Item_Fat_Content
ORDER BY Total_Sales DESC
LIMIT 1000;

-- Drop the temporary table after use
DROP TEMPORARY TABLE Temp_Outlets;
