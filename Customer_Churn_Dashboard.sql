USE churn_bd;
-- HOW MANY TOTAL CUSTOMERS DOES THE COMPANY HAVE?  
SELECT *
FROM customer_churn;

-- Which contract type has the highest customer churn? 
SELECT Contract,
       COUNT(*) AS Churn_Count
FROM customer_churn
WHERE Churn='Yes'
GROUP BY Contract
ORDER BY Churn_Count DESC;

-- What is the average monthly charge of customers who left the company?

SELECT AVG(MonthlyCharges) AS Avg_Monthly_Charges
FROM customer_churn
WHERE Churn='Yes'; 

-- Which internet service category experiences the highest customer churn?
SELECT InternetService,
       COUNT(*) AS Customers_Left
FROM customer_churn
WHERE Churn='Yes'
GROUP BY InternetService
ORDER BY Customers_Left DESC;

-- Who are the most loyal customers based on tenure?
SELECT customerID,
       tenure,
       TotalCharges
FROM customer_churn
ORDER BY tenure DESC
LIMIT 10;  

SELECT count(*) AS Total_Customer_Count
FROM customer_churn
where tenure>70;

