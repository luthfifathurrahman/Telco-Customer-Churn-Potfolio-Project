# Telco Customer Churn
## Business Understanding
1. How many customers have churned?
2. How many customers of each gender have churned?
3. How many customers have churned based on senior citizen status?
4. How many customers have churned based on partnership status?
5. How many customers have churned based on dependent status?
6. How many customers have churned based on tenure?
7. How many customers have churned based on phone service status?
8. How many customers have churned based on multiple lines status?
9. How many customers have churned based on internet service status?
10. How many customers have churned based on online security status?
11. How many customers have churned based on online backup status?
12. How many customers have churned based on device protection status?
13. How many customers have churned based on tech support status?
14. How many customers have churned based on streaming TV status?
15. How many customers have churned based on streaming movies status?
16. How many customers have churned based on contract type?
17. How many customers have churned based on paperless billing status?
18. How many customers have churned based on payment method?

## Data Understanding
- Data Source: https://www.kaggle.com/blastchar/telco-customer-churn
- There are 1 dataset, which is:
  - Telco Customer data: 21 columns and 7043 rows
    - customerID: Customer ID
    - gender: Whether the customer is a male or a female
    - SeniorCitizen: Whether the customer is a senior citizen or not (1, 0)
    - Partner: Whether the customer has a partner or not (Yes, No)
    - Dependents: Whether the customer has dependents or not (Yes, No)
    - tenure: Number of months the customer has stayed with the company
    - PhoneService: Whether the customer has a phone service or not (Yes, No)
    - MultipleLines: Whether the customer has multiple lines or not (Yes, No, No phone service)
    - InternetService: Customer’s internet service provider (DSL, Fiber optic, No)
    - OnlineSecurity: Whether the customer has online security or not (Yes, No, No internet service)
    - OnlineBackup: Whether the customer has online backup or not (Yes, No, No internet service)
    - DeviceProtection: Whether the customer has device protection or not (Yes, No, No internet service)
    - TechSupport: Whether the customer has tech support or not (Yes, No, No internet service)
    - StreamingTV: Whether the customer has streaming TV or not (Yes, No, No internet service)
    - StreamingMovies: Whether the customer has streaming movies or not (Yes, No, No internet service)
    - Contract: The contract term of the customer (Month-to-month, One year, Two year)
    - PaperlessBilling: Whether the customer has paperless billing or not (Yes, No)
    - PaymentMethod: The customer’s payment method (Electronic check, Mailed check, Bank transfer (automatic), Credit card
    - MonthlyCharges: The amount charged to the customer monthly
    - TotalCharges: The total amount charged to the customer
    - Churn: Whether the customer churned or not (Yes or No)
      
## Data Preparation
- Python Programming Language
- Packages: pandas, numpy, matplotlib, seaborn, regex, datetime

## Data Cleansing
### Telco Customer Data:
  - Renaming The Column's Name
  - Changing The Value in The SeniorCitizen Column
  - Changing The Value in The Partner Column
  - Changing The Value in The Dependents Column
  - Changing The Value in The Tenure Column
  - Changing The Value in The PhoneService Column
  - Changing The Value in The MultipleLines Column
  - Changing The Value in The InternetService Column
  - Changing The Value in The OnlineSecurity Column
  - Changing The Value in The OnlineBackup Column
  - Changing The Value in The DeviceProtection Column
  - Changing The Value in The TechSupport Column
  - Changing The Value in The StreamingTV Column
  - Changing The Value in The StreamingMovies Column
  - Changing The Value in The Contract Column
  - Changing The Value in The PaperlessBilling Column
  - Changing The Value in The PaymentMethod Column
  - Checking The Description of The MonthlyCharges Column
  - Creating A New Column Called TotalCharge using MonthlyCharges times Tenure
  - Removing Data That Has 0 Value in The TotalCharge Column
  - Changing The Value in The MultipleLines Column
  - Removing Unused Column (CustomerID, Tenure, TotalCharges)

## Exploratory Data Analysis
1. How many customers have churned?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Telco-Customer-Churn-Potfolio-Project/main/images/How%20many%20customers%20have%20churned.png)
   
2. How many customers of each gender have churned?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Telco-Customer-Churn-Potfolio-Project/main/images/How%20many%20customers%20of%20each%20gender%20have%20churned.png)
   
3. How many customers have churned based on senior citizen status?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Telco-Customer-Churn-Potfolio-Project/main/images/How%20many%20customers%20have%20churned%20based%20on%20senior%20citizen%20status.png)
   
4. How many customers have churned based on partnership status?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Telco-Customer-Churn-Potfolio-Project/main/images/How%20many%20customers%20have%20churned%20based%20on%20partnership%20status.png)
   
5. How many customers have churned based on dependent status?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Telco-Customer-Churn-Potfolio-Project/main/images/How%20many%20customers%20have%20churned%20based%20on%20dependent%20status.png)
   
6. How many customers have churned based on tenure?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Telco-Customer-Churn-Potfolio-Project/main/images/How%20many%20customers%20have%20churned%20based%20on%20tenure.png)
   
7. How many customers have churned based on phone service status?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Telco-Customer-Churn-Potfolio-Project/main/images/How%20many%20customers%20have%20churned%20based%20on%20phone%20service%20status.png)
   
8. How many customers have churned based on multiple lines status?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Telco-Customer-Churn-Potfolio-Project/main/images/How%20many%20customers%20have%20churned%20based%20on%20multiple%20lines%20status.png)
   
9. How many customers have churned based on internet service status?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Telco-Customer-Churn-Potfolio-Project/main/images/How%20many%20customers%20have%20churned%20based%20on%20internet%20service%20status.png)
   
10. How many customers have churned based on online security status?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Telco-Customer-Churn-Potfolio-Project/main/images/How%20many%20customers%20have%20churned%20based%20on%20online%20security%20status.png)
   
11. How many customers have churned based on online backup status?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Telco-Customer-Churn-Potfolio-Project/main/images/How%20many%20customers%20have%20churned%20based%20on%20online%20backup%20status.png)
   
12. How many customers have churned based on device protection status?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Telco-Customer-Churn-Potfolio-Project/main/images/How%20many%20customers%20have%20churned%20based%20on%20device%20protection%20status.png)
   
13. How many customers have churned based on tech support status?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Telco-Customer-Churn-Potfolio-Project/main/images/How%20many%20customers%20have%20churned%20based%20on%20tech%20support%20status.png)
   
14. How many customers have churned based on streaming TV status?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Telco-Customer-Churn-Potfolio-Project/main/images/How%20many%20customers%20have%20churned%20based%20on%20streaming%20TV%20status.png)
   
15. How many customers have churned based on streaming movies status?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Telco-Customer-Churn-Potfolio-Project/main/images/How%20many%20customers%20have%20churned%20based%20on%20streaming%20movies%20status.png)
   
16. How many customers have churned based on contract type?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Telco-Customer-Churn-Potfolio-Project/main/images/How%20many%20customers%20have%20churned%20based%20on%20contract%20type.png)
   
17. How many customers have churned based on paperless billing status?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Telco-Customer-Churn-Potfolio-Project/main/images/How%20many%20customers%20have%20churned%20based%20on%20paperless%20billing%20status.png)
   
18. How many customers have churned based on payment method?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Telco-Customer-Churn-Potfolio-Project/main/images/How%20many%20customers%20have%20churned%20based%20on%20payment%20method.png)
   
