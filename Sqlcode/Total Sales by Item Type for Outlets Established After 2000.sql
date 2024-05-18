SELECT Item_Type, SUM(Item_Outlet_Sales) AS Total_Sales
FROM sales_prediction
WHERE Outlet_Identifier IN (
    SELECT DISTINCT Outlet_Identifier
    FROM sales_prediction
    WHERE Outlet_Establishment_Year > 2000
)
GROUP BY Item_Type
ORDER BY Total_Sales DESC;