# Big_Mart_sales

The sales_prediction dataset contains information on sales transactions for various items across different retail outlets. It includes columns such as Item_Identifier, Item_Type, Item_MRP, Item_Visibility, Outlet_Identifier, Outlet_Type, Outlet_Size, Outlet_Location_Type, Outlet_Establishment_Year, Item_Outlet_Sales, and Item_Fat_Content. 

These columns capture details about the product characteristics, outlet attributes, and sales performance, allowing for comprehensive analysis of sales trends, outlet performance, and the impact of item and outlet features on sales outcomes. The dataset is valuable for making informed business decisions regarding inventory management, pricing strategies, and marketing efforts.

Business queries
# Total sales by item type.
SELECT Item_Type, SUM(Item_Outlet_Sales) AS Total_Sales
FROM sales_prediction
GROUP BY Item_Type
ORDER BY Total_Sales DESC;
