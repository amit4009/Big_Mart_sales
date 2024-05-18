-- Create a temporary table for the top 5 item types by sales
CREATE TEMPORARY TABLE TopItemTypes AS
SELECT Item_Type
FROM (
    SELECT Item_Type, SUM(Item_Outlet_Sales) AS Total_Sales
    FROM sales_prediction
    GROUP BY Item_Type
    ORDER BY Total_Sales DESC
    LIMIT 5
) AS TopItems;

-- Use the temporary table to get the yearly sales trend for the top 5 item types
SELECT Outlet_Establishment_Year, Item_Type, SUM(Item_Outlet_Sales) AS Total_Sales
FROM sales_prediction
WHERE Item_Type IN (SELECT Item_Type FROM TopItemTypes)
GROUP BY Outlet_Establishment_Year, Item_Type
ORDER BY Outlet_Establishment_Year, Total_Sales DESC;

-- Drop the temporary table
DROP TEMPORARY TABLE TopItemTypes;
