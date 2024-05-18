SELECT Outlet_Location_Type, SUM(Item_Outlet_Sales) AS Total_Sales
FROM sales_prediction
WHERE Item_Visibility < 0.05
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC;
