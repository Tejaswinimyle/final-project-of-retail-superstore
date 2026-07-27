use retail_analysis;
SELECT * FROM cleaned_superstore LIMIT 10;
SELECT SUM(Sales) AS Total_Sales FROM cleaned_superstore;
SELECT SUM(Profit) AS Total_Profit FROM cleaned_superstore;
SELECT Category,
       SUM(Sales) AS Total_Sales
FROM cleaned_superstore
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT Region,
       SUM(Sales) AS Total_Sales
FROM cleaned_superstore
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT Product_Name,
       SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Product_Name
HAVING SUM(Profit) < 0
ORDER BY Total_Profit;