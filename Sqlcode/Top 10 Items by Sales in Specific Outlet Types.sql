SELECT Item_Identifier, SUM(Item_Outlet_Sales) AS Total_Sales
FROM sales_prediction
WHERE Outlet_Type = 'Supermarket Type1'
GROUP BY Item_Identifier
ORDER BY Total_Sales DESC
LIMIT 10;
