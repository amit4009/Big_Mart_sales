SELECT Item_Type,Item_MRP, Item_Outlet_Sales
FROM sales_prediction
WHERE EXISTS (
    SELECT 1
    FROM sales_prediction s
    WHERE s.Item_Outlet_Sales > 2000
    AND s.Item_Type = sales_prediction.Item_Type
);
