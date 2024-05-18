SELECT Item_Type, SUM(Item_Outlet_Sales) AS Total_Sales
FROM sales_prediction
GROUP BY Item_Type
ORDER BY Total_Sales DESC;
