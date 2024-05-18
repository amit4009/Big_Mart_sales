SELECT Outlet_Type, SUM(Item_Outlet_Sales) AS Total_Sales
FROM sales_prediction
WHERE Item_Identifier IN ('FDA15', 'DRC01', 'FDN15')
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC;
