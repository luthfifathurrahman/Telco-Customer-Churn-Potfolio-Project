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

-- Changing The Value on The tenure
ALTER TABLE TelcoCustomer..Telco
ALTER COLUMN tenure nvarchar(255)

SELECT tenure,
CASE WHEN tenure < 12 THEN 'Less Than A Year'
WHEN tenure BETWEEN 12 AND 23 THEN '1-2 Year'
WHEN tenure BETWEEN 24 AND 35 THEN '2-3 Year'
WHEN tenure BETWEEN 36 AND 47 THEN '3-4 Year'
WHEN tenure BETWEEN 48 AND 59 THEN '4-5 Year'
WHEN tenure >= 60 THEN 'More Than 5 Year'
ELSE tenure
END 
FROM TelcoCustomer..Telco

ALTER TABLE TelcoCustomer..Telco
ADD tenurecate nvarchar(255)

UPDATE TelcoCustomer..Telco
SET tenurecate = CASE WHEN tenure < 12 THEN 'Less Than A Year'
WHEN tenure BETWEEN 12 AND 23 THEN '1-2 Year'
WHEN tenure BETWEEN 24 AND 35 THEN '2-3 Year'
WHEN tenure BETWEEN 36 AND 47 THEN '3-4 Year'
WHEN tenure BETWEEN 48 AND 59 THEN '4-5 Year'
WHEN tenure >= 60 THEN 'More Than 5 Year'
ELSE tenure
END 

-- Checking Missing Value on tenurecate Column
SELECT *
FROM TelcoCustomer..Telco
WHERE tenurecate is null

ALTER TABLE TelcoCustomer..Telco
ALTER COLUMN tenure float

------------------------------------------------------------------------------------------------------
-- PhoneService Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The PhoneService Column
SELECT PhoneService
FROM TelcoCustomer..Telco

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

-- Checking Missing Value on PaymentMethod Column
SELECT *
FROM TelcoCustomer..Telco
WHERE PaymentMethod is null

------------------------------------------------------------------------------------------------------
-- MonthlyCharges Column
~~~~~~~~~~~~~~~~~~~~
-- Changing The Data Type on MonthlyCharges Column
ALTER TABLE TelcoCustomer..Telco
ALTER COLUMN MonthlyCharges float

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
-- Changing The Data Type on TotalCharges Column
ALTER TABLE TelcoCustomer..Telco
ALTER COLUMN TotalCharges float

-- Checking The TotalCharges Column
SELECT tenure, MonthlyCharges, TotalCharges, tenure * MonthlyCharges AS Total
FROM TelcoCustomer..Telco

-- Changing The Value on The TotalCharges
DELETE FROM TelcoCustomer..Telco 
WHERE tenure = 0

UPDATE TelcoCustomer..Telco
SET TotalCharges = tenure * MonthlyCharges

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
------------------------------------------------------------------------------------------------------
SELECT Churn, COUNT(Churn) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The Gender
------------------------------------------------------------------------------------------------------
SELECT gender, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY gender

------------------------------------------------------------------------------------------------------
-- Checking The Number of Gender Who Churn
------------------------------------------------------------------------------------------------------
SELECT Churn, gender, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn, gender

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The Senior Citizen Status
------------------------------------------------------------------------------------------------------
SELECT SeniorCitizen, COUNT(SeniorCitizen) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY SeniorCitizen

------------------------------------------------------------------------------------------------------
-- Checking The Number of Senior Citizen Who Churn
------------------------------------------------------------------------------------------------------
SELECT Churn, SeniorCitizen, COUNT(SeniorCitizen) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn, SeniorCitizen

------------------------------------------------------------------------------------------------------
-- Checking The Number of Gender Based on Senior Citizen
------------------------------------------------------------------------------------------------------
SELECT gender, SeniorCitizen, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY gender, SeniorCitizen

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The Partner Status
------------------------------------------------------------------------------------------------------
SELECT Partner, COUNT(Partner) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Partner

------------------------------------------------------------------------------------------------------
-- Checking The Number of Partner Who Churn
------------------------------------------------------------------------------------------------------
SELECT Churn, Partner, COUNT(Partner) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn, Partner

------------------------------------------------------------------------------------------------------
-- Checking The Number of Gender Based on Partner
------------------------------------------------------------------------------------------------------
SELECT gender, Partner, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY gender, Partner

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The Dependents Status
------------------------------------------------------------------------------------------------------
SELECT Dependents, COUNT(Dependents) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Dependents

------------------------------------------------------------------------------------------------------
-- Checking The Number of Dependents Who Churn
------------------------------------------------------------------------------------------------------
SELECT Churn, Dependents, COUNT(Dependents) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn, Dependents

------------------------------------------------------------------------------------------------------
-- Checking The Number of Gender Based on Dependents
------------------------------------------------------------------------------------------------------
SELECT gender, Dependents, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY gender, Dependents

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The tenure Status
------------------------------------------------------------------------------------------------------
SELECT tenurecate, COUNT(tenurecate) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY tenurecate

------------------------------------------------------------------------------------------------------
-- Checking The Number of tenure Who Churn
------------------------------------------------------------------------------------------------------
SELECT Churn, tenurecate, COUNT(tenurecate) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn, tenurecate

------------------------------------------------------------------------------------------------------
-- Checking The Number of Gender Based on tenure
------------------------------------------------------------------------------------------------------
SELECT gender, tenurecate, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY gender, tenurecate

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The PhoneService Status
------------------------------------------------------------------------------------------------------
SELECT PhoneService, COUNT(PhoneService) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY PhoneService

------------------------------------------------------------------------------------------------------
-- Checking The Number of PhoneService Who Churn
------------------------------------------------------------------------------------------------------
SELECT Churn, PhoneService, COUNT(PhoneService) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn, PhoneService

------------------------------------------------------------------------------------------------------
-- Checking The Number of Gender Based on PhoneService
------------------------------------------------------------------------------------------------------
SELECT gender, PhoneService, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY gender, PhoneService

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The MultipleLines Status
------------------------------------------------------------------------------------------------------
SELECT MultipleLines, COUNT(MultipleLines) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY MultipleLines

------------------------------------------------------------------------------------------------------
-- Checking The Number of MultipleLines Who Churn
------------------------------------------------------------------------------------------------------
SELECT Churn, MultipleLines, COUNT(MultipleLines) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn, MultipleLines

------------------------------------------------------------------------------------------------------
-- Checking The Number of Gender Based on MultipleLines
------------------------------------------------------------------------------------------------------
SELECT gender, MultipleLines, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY gender, MultipleLines

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The InternetService Status
------------------------------------------------------------------------------------------------------
SELECT InternetService, COUNT(InternetService) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY InternetService

------------------------------------------------------------------------------------------------------
-- Checking The Number of InternetService Who Churn
------------------------------------------------------------------------------------------------------
SELECT Churn, InternetService, COUNT(InternetService) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn, InternetService

------------------------------------------------------------------------------------------------------
-- Checking The Number of Gender Based on InternetService
------------------------------------------------------------------------------------------------------
SELECT gender, InternetService, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY gender, InternetService

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The OnlineSecurity Status
------------------------------------------------------------------------------------------------------
SELECT OnlineSecurity, COUNT(OnlineSecurity) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY OnlineSecurity

------------------------------------------------------------------------------------------------------
-- Checking The Number of OnlineSecurity Who Churn
------------------------------------------------------------------------------------------------------
SELECT Churn, OnlineSecurity, COUNT(OnlineSecurity) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn, OnlineSecurity

------------------------------------------------------------------------------------------------------
-- Checking The Number of Gender Based on OnlineSecurity
------------------------------------------------------------------------------------------------------
SELECT gender, OnlineSecurity, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY gender, OnlineSecurity

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The OnlineBackup Status
------------------------------------------------------------------------------------------------------
SELECT OnlineBackup, COUNT(OnlineBackup) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY OnlineBackup

------------------------------------------------------------------------------------------------------
-- Checking The Number of OnlineBackup Who Churn
------------------------------------------------------------------------------------------------------
SELECT Churn, OnlineBackup, COUNT(OnlineBackup) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn, OnlineBackup

------------------------------------------------------------------------------------------------------
-- Checking The Number of Gender Based on OnlineBackup
------------------------------------------------------------------------------------------------------
SELECT gender, OnlineBackup, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY gender, OnlineBackup

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The DeviceProtection Status
------------------------------------------------------------------------------------------------------
SELECT DeviceProtection, COUNT(DeviceProtection) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY DeviceProtection

------------------------------------------------------------------------------------------------------
-- Checking The Number of DeviceProtection Who Churn
------------------------------------------------------------------------------------------------------
SELECT Churn, DeviceProtection, COUNT(DeviceProtection) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn, DeviceProtection

------------------------------------------------------------------------------------------------------
-- Checking The Number of Gender Based on DeviceProtection
------------------------------------------------------------------------------------------------------
SELECT gender, DeviceProtection, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY gender, DeviceProtection

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The TechSupport Status
------------------------------------------------------------------------------------------------------
SELECT TechSupport, COUNT(TechSupport) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY TechSupport

------------------------------------------------------------------------------------------------------
-- Checking The Number of TechSupport Who Churn
------------------------------------------------------------------------------------------------------
SELECT Churn, TechSupport, COUNT(TechSupport) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn, TechSupport

------------------------------------------------------------------------------------------------------
-- Checking The Number of Gender Based on TechSupport
------------------------------------------------------------------------------------------------------
SELECT gender, TechSupport, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY gender, TechSupport

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The StreamingTV Status
------------------------------------------------------------------------------------------------------
SELECT StreamingTV, COUNT(StreamingTV) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY StreamingTV

------------------------------------------------------------------------------------------------------
-- Checking The Number of StreamingTV Who Churn
------------------------------------------------------------------------------------------------------
SELECT Churn, StreamingTV, COUNT(StreamingTV) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn, StreamingTV

------------------------------------------------------------------------------------------------------
-- Checking The Number of Gender Based on StreamingTV
------------------------------------------------------------------------------------------------------
SELECT gender, StreamingTV, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY gender, StreamingTV

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The StreamingMovies Status
------------------------------------------------------------------------------------------------------
SELECT StreamingMovies, COUNT(StreamingMovies) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY StreamingMovies

------------------------------------------------------------------------------------------------------
-- Checking The Number of StreamingMovies Who Churn
------------------------------------------------------------------------------------------------------
SELECT Churn, StreamingMovies, COUNT(StreamingMovies) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn, StreamingMovies

------------------------------------------------------------------------------------------------------
-- Checking The Number of Gender Based on StreamingMovies
------------------------------------------------------------------------------------------------------
SELECT gender, StreamingMovies, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY gender, StreamingMovies

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The Contract Status
------------------------------------------------------------------------------------------------------
SELECT Contract, COUNT(Contract) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Contract

------------------------------------------------------------------------------------------------------
-- Checking The Number of Contract Who Churn
------------------------------------------------------------------------------------------------------
SELECT Churn, Contract, COUNT(Contract) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn, Contract

------------------------------------------------------------------------------------------------------
-- Checking The Number of Gender Based on Contract
------------------------------------------------------------------------------------------------------
SELECT gender, Contract, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY gender, Contract

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The PaperlessBilling Status
------------------------------------------------------------------------------------------------------
SELECT PaperlessBilling, COUNT(PaperlessBilling) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY PaperlessBilling

------------------------------------------------------------------------------------------------------
-- Checking The Number of PaperlessBilling Who Churn
------------------------------------------------------------------------------------------------------
SELECT Churn, PaperlessBilling, COUNT(PaperlessBilling) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn, PaperlessBilling

------------------------------------------------------------------------------------------------------
-- Checking The Number of Gender Based on PaperlessBilling
------------------------------------------------------------------------------------------------------
SELECT gender, PaperlessBilling, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY gender, PaperlessBilling

------------------------------------------------------------------------------------------------------
-- Checking The Number of Customers Based on The PaymentMethod Status
------------------------------------------------------------------------------------------------------
SELECT PaymentMethod, COUNT(PaymentMethod) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY PaymentMethod

------------------------------------------------------------------------------------------------------
-- Checking The Number of PaymentMethod Who Churn
------------------------------------------------------------------------------------------------------
SELECT Churn, PaymentMethod, COUNT(PaymentMethod) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY Churn, PaymentMethod

------------------------------------------------------------------------------------------------------
-- Checking The Number of Gender Based on PaymentMethod
------------------------------------------------------------------------------------------------------
SELECT gender, PaymentMethod, COUNT(gender) AS Amount_Customer
FROM TelcoCustomer..Telco
GROUP BY gender, PaymentMethod

------------------------------------------------------------------------------------------------------
-- Checking The Average of Total Charges Based on The Senior Citizen Status
------------------------------------------------------------------------------------------------------
SELECT SeniorCitizen, ROUND(AVG(TotalCharges), 2) AS Average_of_Total_Charges
FROM TelcoCustomer..Telco
GROUP BY SeniorCitizen

------------------------------------------------------------------------------------------------------
-- Checking The Average of Total Charges Based on The Gender
------------------------------------------------------------------------------------------------------
SELECT gender, ROUND(AVG(TotalCharges), 2) AS Average_of_Total_Charges
FROM TelcoCustomer..Telco
GROUP BY gender


------------------------------------------------------------------------------------------------------
-- Checking The Average of Monthly Charges Based on The Senior Citizen Status
------------------------------------------------------------------------------------------------------
SELECT SeniorCitizen, ROUND(AVG(MonthlyCharges), 2) AS Average_of_Monthly_Charges
FROM TelcoCustomer..Telco
GROUP BY SeniorCitizen

------------------------------------------------------------------------------------------------------
-- Checking The Average of Monthly Charges Based on The Gender
------------------------------------------------------------------------------------------------------
SELECT gender, ROUND(AVG(MonthlyCharges), 2) AS Average_of_Monthly_Charges
FROM TelcoCustomer..Telco
GROUP BY gender
