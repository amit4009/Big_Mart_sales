# Big_Mart_sales
The sales_prediction dataset provides historical sales data of Big_Mart located in different regions, each with multiple departments. Key columns include Item_Identifier, Item_Type, Item_MRP, Item_Visibility, Outlet_Identifier, Outlet_Type, Outlet_Size, Outlet_Location_Type, Outlet_Establishment_Year, Item_Outlet_Sales, and Item_Fat_Content, capturing product details, outlet attributes, and sales performance. The dataset also includes selected holiday markdown events known to affect sales, adding complexity to predicting departmental impacts. The project's objectives are to identify top-performing branches and products, analyze sales trends over time, understand customer behavior, and optimize sales strategies through improved inventory management, pricing strategies, and marketing efforts.

# Purpose of the project 
The purpose of the project is to analyze Walmart sales data to identify top-performing branches and products, understand sales trends and customer behavior, and optimize sales strategies.

# Analysis List
1. Product Analysis
Conduct analysis on the data to understand the different product lines, the products lines performing best and the product lines that need to be improved.

2. Sales Analysis
This analysis aims to answer the question of the sales trends of product. The result of this can help use measure the effectiveness of each sales strategy the business applies and what modificatoins are needed to gain more sales.

 3.Trend Analysis
The purpose of trend analysis is to identify patterns and seasonal variations in sales data to inform strategic decision-making and improve future sales performance.


# Business questions to Answer

1. What are the average sales per outlet for the top 5 item types?
2. What is the total sales distribution by outlet type for specific high-performing items?
3. What are the yearly sales trends for the top-selling item types?
4. What is the sales performance by item fat content for outlets with high overall sales?
5. Which are the top 10 items by sales in 'Supermarket Type1' outlets?
6. How do total sales of low visibility items vary by outlet location type?
7. What is the correlation between item MRP and sales for high-performing items?
8. What is the sales performance by outlet size for top-performing outlets?
9. How does sales visibility impact the total sales of high MRP items?
10. What are the total sales by item type and establishment year?

# Code
```sql
SELECT Item_Type, SUM(Item_Outlet_Sales) AS Total_Sales
FROM sales_prediction
WHERE Outlet_Identifier IN (
    SELECT DISTINCT Outlet_Identifier
    FROM sales_prediction
    WHERE Outlet_Establishment_Year > 2000
)
GROUP BY Item_Type
ORDER BY Total_Sales DESC;
```
Check the sqlcode file above for full queries.

# Dashboard

The dashboard provides a comprehensive visualization of Big Mart sales data, highlighting key metrics such as total sales by item type, average sales per outlet, sales distribution by outlet type and size, sales trends over time, and the contribution of different item types and outlet characteristics to overall sales performance.

![alt text](<Dashboard 1 (3).png>)
Link To Tableau Dashboard.[Link text](https://public.tableau.com/app/profile/amit.pandit8190/viz/Bigmart_sales/Dashboard1?publish=yes)

