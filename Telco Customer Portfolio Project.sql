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
