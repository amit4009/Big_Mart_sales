SELECT Item_Identifier, ROUND(Item_Visibility, 2) AS Visibility_Range, SUM(Item_Outlet_Sales) AS Total_Sales
FROM sales_prediction
WHERE Item_MRP > 200
GROUP BY Item_Identifier, Visibility_Range
ORDER BY Visibility_Range;
