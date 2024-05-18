-- Step 1: Create a temporary table for outlets with high sales
CREATE TEMPORARY TABLE HighSalesOutlets AS
SELECT Outlet_Identifier
FROM sales_prediction
GROUP BY Outlet_Identifier
HAVING SUM(Item_Outlet_Sales) > 100000;

-- Step 2: Use the temporary table to get the sales performance by outlet size
SELECT Outlet_Size, SUM(Item_Outlet_Sales) AS Total_Sales
FROM sales_prediction
WHERE Outlet_Identifier IN (SELECT Outlet_Identifier FROM HighSalesOutlets)
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC
LIMIT 1000;

-- Step 3: Drop the temporary table if no longer needed
DROP TEMPORARY TABLE HighSalesOutlets;
