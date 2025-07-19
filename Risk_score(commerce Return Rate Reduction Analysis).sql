select * from ecommerce_risk;

SELECT Category, 
       ROUND(SUM(Returned) * 100.0 / COUNT(*), 2) AS Return_Percentage
FROM ecommerce_risk
GROUP BY Category;

SELECT Geography, 
       ROUND(SUM(Returned) * 100.0 / COUNT(*), 2) AS Return_Percentage
FROM ecommerce_risk
GROUP BY Geography;

SELECT 
  CAST(Order_Date AS DATE) AS Order_Date,
  COALESCE(Return_Reason, 'Not Returned') AS Return_Reason,
  COALESCE(Return_Status, 'Not Applicable') AS Return_Status
FROM ecommerce_risk;