------------------------------------------------------------------------------------------------------
------------------------------------------- DATA PROFILING -------------------------------------------
------------------------------------------------------------------------------------------------------
-- Looking All The Data from The Table
SELECT *
FROM TelcoCustomer..Telco 

-- Counting How Many Rows in The Table
SELECT COUNT(*) AS Row_Count
FROM TelcoCustomer..Telco 

-- Showing The Data Type For Every Column
SELECT COLUMN_NAME, DATA_TYPE
FROM TelcoCustomer.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Telco'

------------------------------------------------------------------------------------------------------
------------------------------------------- DATA CLEANSING -------------------------------------------
------------------------------------------------------------------------------------------------------
-- customerID Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The customerID Column
SELECT customerID
FROM TelcoCustomer..Telco

-- Checking Missing Value on customerID Column
SELECT *
FROM TelcoCustomer..Telco
WHERE customerID is null

------------------------------------------------------------------------------------------------------
-- gender Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The gender Column
SELECT gender
FROM TelcoCustomer..Telco

-- Checking The Unique Value on The gender Column
SELECT DISTINCT gender, COUNT(gender) AS amount
FROM TelcoCustomer..Telco
GROUP BY gender
ORDER BY gender

-- Checking Missing Value on gender Column
SELECT *
FROM TelcoCustomer..Telco
WHERE gender is null

------------------------------------------------------------------------------------------------------
-- SeniorCitizen Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The SeniorCitizen Column
SELECT SeniorCitizen
FROM TelcoCustomer..Telco

-- Checking The Unique Value on The SeniorCitizen Column
SELECT DISTINCT SeniorCitizen, COUNT(SeniorCitizen) AS amount
FROM TelcoCustomer..Telco
GROUP BY SeniorCitizen
ORDER BY SeniorCitizen

-- Checking Missing Value on SeniorCitizen Column
SELECT *
FROM TelcoCustomer..Telco
WHERE SeniorCitizen is null

-- Changing The Value on The SeniorCitizen
SELECT SeniorCitizen,
CASE WHEN SeniorCitizen = 0 THEN 'No'
ELSE 'Yes'
END 
FROM TelcoCustomer..Telco

ALTER TABLE TelcoCustomer..Telco
ALTER COLUMN SeniorCitizen nvarchar(255)

UPDATE TelcoCustomer..Telco
SET SeniorCitizen = CASE WHEN SeniorCitizen = 0 THEN 'No'
ELSE 'Yes'
END 

------------------------------------------------------------------------------------------------------
-- Partner Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The Partner Column
SELECT Partner
FROM TelcoCustomer..Telco

-- Checking The Unique Value on The Partner Column
SELECT DISTINCT Partner, COUNT(Partner) AS amount
FROM TelcoCustomer..Telco
GROUP BY Partner
ORDER BY Partner

-- Checking Missing Value on Partner Column
SELECT *
FROM TelcoCustomer..Telco
WHERE Partner is null

------------------------------------------------------------------------------------------------------
-- Dependents Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The Dependents Column
SELECT Dependents
FROM TelcoCustomer..Telco

-- Checking The Unique Value on The Dependents Column
SELECT DISTINCT Dependents, COUNT(Dependents) AS amount
FROM TelcoCustomer..Telco
GROUP BY Dependents
ORDER BY Dependents

-- Checking Missing Value on Dependents Column
SELECT *
FROM TelcoCustomer..Telco
WHERE Dependents is null

------------------------------------------------------------------------------------------------------
-- tenure Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The tenure Column
SELECT tenure
FROM TelcoCustomer..Telco

-- Checking The Unique Value on The tenure Column
SELECT DISTINCT tenure, COUNT(tenure) AS amount
FROM TelcoCustomer..Telco
GROUP BY tenure
ORDER BY tenure

-- Checking Missing Value on tenure Column
SELECT *
FROM TelcoCustomer..Telco
WHERE tenure is null

------------------------------------------------------------------------------------------------------
-- PhoneService Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The PhoneService Column
SELECT PhoneService
FROM TelcoCustomer..Telco

-- Checking The Unique Value on The PhoneService Column
SELECT DISTINCT PhoneService, COUNT(PhoneService) AS amount
FROM TelcoCustomer..Telco
GROUP BY PhoneService
ORDER BY PhoneService

-- Checking Missing Value on PhoneService Column
SELECT *
FROM TelcoCustomer..Telco
WHERE PhoneService is null

------------------------------------------------------------------------------------------------------
-- MultipleLines Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The MultipleLines Column
SELECT MultipleLines
FROM TelcoCustomer..Telco

-- Checking The Unique Value on The MultipleLines Column
SELECT DISTINCT MultipleLines, COUNT(MultipleLines) AS amount
FROM TelcoCustomer..Telco
GROUP BY MultipleLines
ORDER BY MultipleLines

-- Checking Missing Value on MultipleLines Column
SELECT *
FROM TelcoCustomer..Telco
WHERE MultipleLines is null

------------------------------------------------------------------------------------------------------
-- InternetService Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The InternetService Column
SELECT InternetService
FROM TelcoCustomer..Telco

-- Checking The Unique Value on The InternetService Column
SELECT DISTINCT InternetService, COUNT(InternetService) AS amount
FROM TelcoCustomer..Telco
GROUP BY InternetService
ORDER BY InternetService

-- Checking Missing Value on InternetService Column
SELECT *
FROM TelcoCustomer..Telco
WHERE InternetService is null

------------------------------------------------------------------------------------------------------
-- OnlineSecurity Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The OnlineSecurity Column
SELECT OnlineSecurity
FROM TelcoCustomer..Telco

-- Checking The Unique Value on The OnlineSecurity Column
SELECT DISTINCT OnlineSecurity, COUNT(OnlineSecurity) AS amount
FROM TelcoCustomer..Telco
GROUP BY OnlineSecurity
ORDER BY OnlineSecurity

-- Checking Missing Value on OnlineSecurity Column
SELECT *
FROM TelcoCustomer..Telco
WHERE OnlineSecurity is null

------------------------------------------------------------------------------------------------------
-- OnlineBackup Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The OnlineBackup Column
SELECT OnlineBackup
FROM TelcoCustomer..Telco

-- Checking The Unique Value on The OnlineBackup Column
SELECT DISTINCT OnlineBackup, COUNT(OnlineBackup) AS amount
FROM TelcoCustomer..Telco
GROUP BY OnlineBackup
ORDER BY OnlineBackup

-- Checking Missing Value on OnlineBackup Column
SELECT *
FROM TelcoCustomer..Telco
WHERE OnlineBackup is null

------------------------------------------------------------------------------------------------------
-- DeviceProtection Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The DeviceProtection Column
SELECT DeviceProtection
FROM TelcoCustomer..Telco

-- Checking The Unique Value on The DeviceProtection Column
SELECT DISTINCT DeviceProtection, COUNT(DeviceProtection) AS amount
FROM TelcoCustomer..Telco
GROUP BY DeviceProtection
ORDER BY DeviceProtection

-- Checking Missing Value on DeviceProtection Column
SELECT *
FROM TelcoCustomer..Telco
WHERE DeviceProtection is null

------------------------------------------------------------------------------------------------------
-- TechSupport Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The TechSupport Column
SELECT TechSupport
FROM TelcoCustomer..Telco

-- Checking The Unique Value on The TechSupport Column
SELECT DISTINCT TechSupport, COUNT(TechSupport) AS amount
FROM TelcoCustomer..Telco
GROUP BY TechSupport
ORDER BY TechSupport

-- Checking Missing Value on TechSupport Column
SELECT *
FROM TelcoCustomer..Telco
WHERE TechSupport is null

------------------------------------------------------------------------------------------------------
-- StreamingTV Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The StreamingTV Column
SELECT StreamingTV
FROM TelcoCustomer..Telco

-- Checking The Unique Value on The StreamingTV Column
SELECT DISTINCT StreamingTV, COUNT(StreamingTV) AS amount
FROM TelcoCustomer..Telco
GROUP BY StreamingTV
ORDER BY StreamingTV

-- Checking Missing Value on StreamingTV Column
SELECT *
FROM TelcoCustomer..Telco
WHERE StreamingTV is null

------------------------------------------------------------------------------------------------------
-- StreamingMovies Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The StreamingMovies Column
SELECT StreamingMovies
FROM TelcoCustomer..Telco

-- Checking The Unique Value on The StreamingMovies Column
SELECT DISTINCT StreamingMovies, COUNT(StreamingMovies) AS amount
FROM TelcoCustomer..Telco
GROUP BY StreamingMovies
ORDER BY StreamingMovies

-- Checking Missing Value on StreamingMovies Column
SELECT *
FROM TelcoCustomer..Telco
WHERE StreamingMovies is null

------------------------------------------------------------------------------------------------------
-- Contract Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The Contract Column
SELECT Contract
FROM TelcoCustomer..Telco

-- Checking The Unique Value on The Contract Column
SELECT DISTINCT Contract, COUNT(Contract) AS amount
FROM TelcoCustomer..Telco
GROUP BY Contract
ORDER BY Contract

-- Checking Missing Value on Contract Column
SELECT *
FROM TelcoCustomer..Telco
WHERE Contract is null

------------------------------------------------------------------------------------------------------
-- PaperlessBilling Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The PaperlessBilling Column
SELECT PaperlessBilling
FROM TelcoCustomer..Telco

-- Checking The Unique Value on The PaperlessBilling Column
SELECT DISTINCT PaperlessBilling, COUNT(PaperlessBilling) AS amount
FROM TelcoCustomer..Telco
GROUP BY PaperlessBilling
ORDER BY PaperlessBilling

-- Checking Missing Value on PaperlessBilling Column
SELECT *
FROM TelcoCustomer..Telco
WHERE PaperlessBilling is null

------------------------------------------------------------------------------------------------------
-- PaymentMethod Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The PaymentMethod Column
SELECT PaymentMethod
FROM TelcoCustomer..Telco

-- Checking The Unique Value on The PaymentMehod Column
SELECT DISTINCT PaymentMethod, COUNT(PaymentMethod) AS amount
FROM TelcoCustomer..Telco
GROUP BY PaymentMethod
ORDER BY PaymentMethod

-- Checking Missing Value on PaymentMethod Column
SELECT *
FROM TelcoCustomer..Telco
WHERE PaymentMethod is null

------------------------------------------------------------------------------------------------------
-- MonthlyCharges Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The MonthlyCharges Column
SELECT MonthlyCharges
FROM TelcoCustomer..Telco

-- Changing The Data Type on MonthlyCharges Column
ALTER TABLE TelcoCustomer..Telco
ALTER COLUMN MonthlyCharges float

-- Checking Missing Value on MonthlyCharges Column
SELECT *
FROM TelcoCustomer..Telco
WHERE MonthlyCharges is null

------------------------------------------------------------------------------------------------------
-- TotalCharges Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The TotalCharges Column
SELECT TotalCharges
FROM TelcoCustomer..Telco

-- Changing The Data Type on TotalCharges Column
ALTER TABLE TelcoCustomer..Telco
ALTER COLUMN TotalCharges float

-- Checking Missing Value on TotalCharges Column
SELECT *
FROM TelcoCustomer..Telco
WHERE TotalCharges is null

------------------------------------------------------------------------------------------------------
-- Churn Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The Churn Column
SELECT Churn
FROM TelcoCustomer..Telco

-- Checking The Unique Value on The Churn Column
SELECT DISTINCT Churn, COUNT(Churn) AS amount
FROM TelcoCustomer..Telco
GROUP BY Churn
ORDER BY Churn

-- Checking Missing Value on Churn Column
SELECT *
FROM TelcoCustomer..Telco
WHERE Churn is null

------------------------------------------------------------------------------------------------------
------------------------------------------ DATA EXPLORATION ------------------------------------------
------------------------------------------------------------------------------------------------------
SELECT *
FROM TelcoCustomer..Telco

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customer Who Churned
SELECT Churn, COUNT(Churn) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn
ORDER BY Churn

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The Gender
------------------------------------------------------------------------------------------------------
SELECT gender, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY gender

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The Senior Citizen Status
------------------------------------------------------------------------------------------------------
SELECT SeniorCitizen, COUNT(SeniorCitizen) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY SeniorCitizen

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The Partner Status
------------------------------------------------------------------------------------------------------
SELECT Partner, COUNT(Partner) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Partner

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The Dependents Status
------------------------------------------------------------------------------------------------------
SELECT Dependents, COUNT(Dependents) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Dependents

------------------------------------------------------------------------------------------------------
-- Checking How Many Customers Are Using All The Services of The Company
------------------------------------------------------------------------------------------------------
SELECT *
FROM TelcoCustomer..Telco
WHERE PhoneService like 'Yes'
AND MultipleLines like 'Yes'
AND InternetService like 'Yes'
AND OnlineSecurity like 'Yes'
AND OnlineBackup like 'Yes'
AND DeviceProtection like 'Yes'
AND TechSupport like 'Yes'
AND StreamingTV like 'Yes'
AND StreamingMovies like 'Yes'
GROUP BY customerID, gender, SeniorCitizen, Partner, Dependents, tenure, PhoneService, MultipleLines, InternetService, OnlineSecurity, OnlineBackup, DeviceProtection, TechSupport, StreamingTV, StreamingMovies, Contract, PaperlessBilling, PaymentMethod, MonthlyCharges, TotalCharges, Churn

------------------------------------------------------------------------------------------------------
-- Checking How Many Customers Are Using Phone Service
------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS #TelcoPhoneService
CREATE TABLE #TelcoPhoneService
(
PhoneService nvarchar(255),
Amount_Cust_Using_Phone_Service float
)

INSERT INTO #TelcoPhoneService
SELECT PhoneService, COUNT(PhoneService)
FROM TelcoCustomer..Telco
GROUP BY PhoneService

------------------------------------------------------------------------------------------------------
-- Checking How Many Customers Are Using Phone Service Who Had Churned
------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS #TelcoChurnPhoneService
CREATE TABLE #TelcoChurnPhoneService
(
PhoneService nvarchar(255),
Churn nvarchar(255),
Amount_Cust_Churn_Using_Phone_Service float
)

INSERT INTO #TelcoChurnPhoneService
SELECT PhoneService, Churn, COUNT(Churn) AS Amount
FROM TelcoCustomer..Telco
GROUP BY PhoneService, Churn

------------------------------------------------------------------------------------------------------
-- Checking The Percentage of Customers Who Are Using Phone Dervice Who Had Churned
------------------------------------------------------------------------------------------------------
SELECT *
FROM #TelcoPhoneService
ORDER BY PhoneService

SELECT *
FROM #TelcoChurnPhoneService
ORDER BY PhoneService, Churn

SELECT a.PhoneService, b.Churn, a.Amount_Cust_Using_Phone_Service, b.Amount_Cust_Churn_Using_Phone_Service, ROUND((b.Amount_Cust_Churn_Using_Phone_Service/a.Amount_Cust_Using_Phone_Service)*100, 2) AS Percentage_of_Churn
FROM #TelcoPhoneService a
JOIN #TelcoChurnPhoneService b
	ON a.PhoneService = b.PhoneService
GROUP BY a.PhoneService, b.Churn, a.Amount_Cust_Using_Phone_Service, b.Amount_Cust_Churn_Using_Phone_Service

------------------------------------------------------------------------------------------------------
-- Checking How Many Customers Are Using Phone Service And Multiple Lines Service
------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS #TelcoPhoneServiceMultipleLines
CREATE TABLE #TelcoPhoneServiceMultipleLines
(
PhoneService nvarchar(255),
MultipleLines nvarchar(255),
Amount_Cust_Using_Phone_Service float
)

INSERT INTO #TelcoPhoneServiceMultipleLines
SELECT PhoneService, MultipleLines, COUNT(PhoneService) AS Amount
FROM TelcoCustomer..Telco
GROUP BY PhoneService, MultipleLines

------------------------------------------------------------------------------------------------------
-- Checking How Many Customers Are Using Phone Service And Multiple Lines Service Who Had Churned
------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS #TelcoChurnPhoneServiceMultipleLines
CREATE TABLE #TelcoChurnPhoneServiceMultipleLines
(
PhoneService nvarchar(255),
MultipleLines nvarchar(255),
Churn nvarchar(255),
Amount_Cust_Churn_Using_Phone_Service float
)

INSERT INTO #TelcoChurnPhoneServiceMultipleLines
SELECT PhoneService, MultipleLines, Churn, COUNT(Churn) AS Amount
FROM TelcoCustomer..Telco
GROUP BY PhoneService, MultipleLines, Churn

------------------------------------------------------------------------------------------------------
-- Checking The Percentage of Customers Who Are Using Phone Service And Multiple Lines Service Who Had Churned
------------------------------------------------------------------------------------------------------
SELECT *
FROM #TelcoPhoneServiceMultipleLines
ORDER BY PhoneService, MultipleLines

SELECT *
FROM #TelcoChurnPhoneServiceMultipleLines
ORDER BY PhoneService, MultipleLines, Churn

SELECT a.PhoneService, a.MultipleLines, b.Churn, a.Amount_Cust_Using_Phone_Service, b.Amount_Cust_Churn_Using_Phone_Service, ROUND((b.Amount_Cust_Churn_Using_Phone_Service/a.Amount_Cust_Using_Phone_Service)*100, 2) AS Percentage_of_Churn
FROM #TelcoPhoneServiceMultipleLines a
JOIN #TelcoChurnPhoneServiceMultipleLines b
	ON a.PhoneService = b.PhoneService
	AND a.MultipleLines = b.MultipleLines
GROUP BY a.PhoneService, a.MultipleLines, b.Churn, a.Amount_Cust_Using_Phone_Service, b.Amount_Cust_Churn_Using_Phone_Service

------------------------------------------------------------------------------------------------------
-- Checking How Many Customers Are Using Internet Service
------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS #TelcoInternetService
CREATE TABLE #TelcoInternetService
(
InternetService nvarchar(255),
Amount_Cust_Using_Internet_Service float
)

INSERT INTO #TelcoInternetService
SELECT InternetService, COUNT(InternetService)
FROM TelcoCustomer..Telco
GROUP BY InternetService

------------------------------------------------------------------------------------------------------
-- Checking How Many Customers Are Using Internet Service Who Had Churned
------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS #TelcoChurnInternetService
CREATE TABLE #TelcoChurnInternetService
(
InternetService nvarchar(255),
Churn nvarchar(255),
Amount_Cust_Churn_Using_Internet_Service float
)

INSERT INTO #TelcoChurnInternetService
SELECT InternetService, Churn, COUNT(Churn) AS Amount
FROM TelcoCustomer..Telco
GROUP BY InternetService, Churn

------------------------------------------------------------------------------------------------------
-- Checking The Percentage of Customers Who Are Using Internet Service Who Had Churned
------------------------------------------------------------------------------------------------------
SELECT *
FROM #TelcoInternetService
ORDER BY InternetService

SELECT *
FROM #TelcoChurnInternetService
ORDER BY InternetService, Churn

SELECT a.InternetService, b.Churn, a.Amount_Cust_Using_Internet_Service, b.Amount_Cust_Churn_Using_Internet_Service, ROUND((b.Amount_Cust_Churn_Using_Internet_Service/a.Amount_Cust_Using_Internet_Service)*100, 2) AS Percentage_of_Churn
FROM #TelcoInternetService a
JOIN #TelcoChurnInternetService b
	ON a.InternetService = b.InternetService
GROUP BY a.InternetService, b.Churn, a.Amount_Cust_Using_Internet_Service, b.Amount_Cust_Churn_Using_Internet_Service

------------------------------------------------------------------------------------------------------
-- Checking How Many Customers Are Using Phone Service And Internet Service
------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS #TelcoPhoneServiceInternetService
CREATE TABLE #TelcoPhoneServiceInternetService
(
PhoneService nvarchar(255),
InternetService nvarchar(255),
Amount_Cust_Using_Phone_Internet_Service float
)

INSERT INTO #TelcoPhoneServiceInternetService
SELECT PhoneService, InternetService, COUNT(PhoneService) AS Amount
FROM TelcoCustomer..Telco
GROUP BY PhoneService, InternetService

------------------------------------------------------------------------------------------------------
-- Checking How Many Customers Are Using Phone Service And Internet Service Who Had Churned
------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS #TelcoChurnPhoneServiceInternetService
CREATE TABLE #TelcoChurnPhoneServiceInternetService
(
PhoneService nvarchar(255),
InternetService nvarchar(255),
Churn nvarchar(255),
Amount_Cust_Churn_Using_Phone_Internet_Service float
)

INSERT INTO #TelcoChurnPhoneServiceInternetService
SELECT PhoneService, InternetService, Churn, COUNT(Churn) AS Amount
FROM TelcoCustomer..Telco
GROUP BY PhoneService, InternetService, Churn

------------------------------------------------------------------------------------------------------
-- Checking The Percentage of Customers Who Are Using Phone Service And Internet Service Who Had Churned
------------------------------------------------------------------------------------------------------
SELECT *
FROM #TelcoPhoneServiceInternetService
ORDER BY PhoneService, InternetService

SELECT *
FROM #TelcoChurnPhoneServiceInternetService
ORDER BY PhoneService, InternetService, Churn

SELECT a.PhoneService, a.InternetService, b.Churn, a.Amount_Cust_Using_Phone_Internet_Service, b.Amount_Cust_Churn_Using_Phone_Internet_Service, ROUND((b.Amount_Cust_Churn_Using_Phone_Internet_Service/a.Amount_Cust_Using_Phone_Internet_Service)*100, 2) AS Percentage_of_Churn
FROM #TelcoChurnPhoneServiceInternetService b
JOIN #TelcoPhoneServiceInternetService a
	ON a.PhoneService = b.PhoneService
	AND a.InternetService = b.InternetService
GROUP BY a.PhoneService, a.InternetService, b.Churn, a.Amount_Cust_Using_Phone_Internet_Service, b.Amount_Cust_Churn_Using_Phone_Internet_Service

------------------------------------------------------------------------------------------------------
-- Checking How Many Customers Are Using Internet Service And Tech Support Service
------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS #TelcoInternetServiceTechSupport
CREATE TABLE #TelcoInternetServiceTechSupport
(
InternetService nvarchar(255),
TechSupport nvarchar(255),
Amount_Cust_Using_Internet_Service_Tech_Sup float
)

INSERT INTO #TelcoInternetServiceTechSupport
SELECT InternetService, TechSupport, COUNT(TechSupport) AS Amount
FROM TelcoCustomer..Telco
GROUP BY InternetService, TechSupport

------------------------------------------------------------------------------------------------------
-- Checking How Many Customers Are Using Internet Service And Tech Support Service Who Had Churned
------------------------------------------------------------------------------------------------------
DROP TABLE IF EXISTS #TelcoChurnInternetServiceTechSupport
CREATE TABLE #TelcoChurnInternetServiceTechSupport
(
InternetService nvarchar(255),
TechSupport nvarchar(255),
Churn nvarchar(255),
Amount_Cust_Churn_Using_Internet_Service_Tech_Sup float
)

INSERT INTO #TelcoChurnInternetServiceTechSupport
SELECT InternetService, TechSupport, Churn, COUNT(Churn) AS Amount
FROM TelcoCustomer..Telco
GROUP BY InternetService, TechSupport, Churn

------------------------------------------------------------------------------------------------------
-- Checking The Percentage of Customers Who Are Using Internet Service And Tech Support Service Who Had Churned
------------------------------------------------------------------------------------------------------
SELECT *
FROM #TelcoInternetServiceTechSupport
ORDER BY InternetService, TechSupport

SELECT *
FROM #TelcoChurnInternetServiceTechSupport
ORDER BY InternetService, TechSupport, Churn

SELECT a.InternetService, a.TechSupport, b.Churn, a.Amount_Cust_Using_Internet_Service_Tech_Sup, b.Amount_Cust_Churn_Using_Internet_Service_Tech_Sup, ROUND((b.Amount_Cust_Churn_Using_Internet_Service_Tech_Sup/a.Amount_Cust_Using_Internet_Service_Tech_Sup)*100, 2) AS Percentage_of_Churn
FROM #TelcoInternetServiceTechSupport a
JOIN #TelcoChurnInternetServiceTechSupport b
	ON a.InternetService = b.InternetService
	AND a.TechSupport = b.TechSupport
GROUP BY a.InternetService, a.TechSupport, b.Churn, a.Amount_Cust_Using_Internet_Service_Tech_Sup, b.Amount_Cust_Churn_Using_Internet_Service_Tech_Sup

------------------------------------------------------------------------------------------------------
-- Checking The SUM of Total Charges Based on The Senior Citizen Status
------------------------------------------------------------------------------------------------------
SELECT SeniorCitizen, ROUND(SUM(TotalCharges), 2) AS Sum_of_Total_Charges
FROM TelcoCustomer..Telco
GROUP BY SeniorCitizen

------------------------------------------------------------------------------------------------------
-- Checking The Average of Total Charges Based on The Senior Citizen Status
------------------------------------------------------------------------------------------------------
SELECT SeniorCitizen, ROUND(AVG(TotalCharges), 2) AS Average_of_Total_Charges
FROM TelcoCustomer..Telco
GROUP BY SeniorCitizen

------------------------------------------------------------------------------------------------------
-- Checking The SUM of Total Charges Based on The Gender
------------------------------------------------------------------------------------------------------
SELECT gender, ROUND(SUM(TotalCharges), 2) AS Sum_of_Total_Charges
FROM TelcoCustomer..Telco
GROUP BY gender

------------------------------------------------------------------------------------------------------
-- Checking The Average of Total Charges Based on The Gender
------------------------------------------------------------------------------------------------------
SELECT gender, ROUND(AVG(TotalCharges), 2) AS Average_of_Total_Charges
FROM TelcoCustomer..Telco
GROUP BY gender
