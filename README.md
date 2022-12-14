# Telco Customer Churn Potfolio Project

<p align="justify">Churn is when customers stop using the services of a company. Thus, churn prediction identifies customers who are likely to cancel their contracts. If the company can predict that, they can offer discounts on these services to keep the customers. To predict churn, I will use machine learning. For creating a machine learning model, I will use data about customers who churned from Kaggle. Based on that, I will make a model for identifying present customers who are about to churn.</p>

## What I Do in This Project

- Analyzing Using Microsoft SQL.
	- Data Profiling.
		- Looking All The Data from The Table.
		- Counting How Many Rows in The Table.
		- Showing The Data Type For Every Column in The Table.
	- Data Cleansing.
		- CovidDeaths Table.
			- customerID Column.
				- Checking The customerID Column.
				- Checking Missing Value on customerID Column.
			- gender Column.
				- Checking The gender Column.
				- Checking Missing Value on gender Column.
			- SeniorCitizen Column.
				- Checking The SeniorCitizen Column.
				- Checking Missing Value on SeniorCitizen Column.
				- Changing The Value on The SeniorCitizen.
			- Partner Column.
				- Checking The Partner Column.
				- Checking Missing Value on Partner Column.
			- Dependents Column.
				- Checking The Dependents Column.
				- Checking Missing Value on Dependents Column.
			- tenure Column.
				- Checking The tenure Column.
				- Changing The Value on The tenure.
				- Checking Missing Value on tenure Column.
			- PhoneService Column.
				- Checking The PhoneService Column.
				- Checking Missing Value on PhoneService Column.
			- MultipleLines Column.
				- Checking The MultipleLines Column.
				- Checking Missing Value on MultipleLines Column.
			- InternetService Column.
				- Checking The InternetService Column.
				- Checking Missing Value on InternetService Column.
			- OnlineSecurity Column.
				- Checking The OnlineSecurity Column.
				- Checking Missing Value on OnlineSecurity Column.
			- OnlineBackup Column.
				- Checking The OnlineBackup Column.
				- Checking Missing Value on OnlineBackup Column.
			- DeviceProtection Column.
				- Checking The DeviceProtection Column.
				- Checking Missing Value on DeviceProtection Column.
			- TechSupport Column.
				- Checking The TechSupport Column.
				- Checking Missing Value on TechSupport Column.
			- StreamingTV Column.
				- Checking The StreamingTV Column.
				- Checking Missing Value on StreamingTV Column.
			- StreamingMovies Column.
				- Checking The StreamingMovies Column.
				- Checking Missing Value on StreamingMovies Column.
			- Contract Column.
				- Checking The Contract Column.
				- Checking Missing Value on Contract Column.
			- PaperlessBilling Column.
				- Checking The PaperlessBilling Column.
				- Checking Missing Value on PaperlessBilling Column.
			- PaymentMethod Column.
				- Checking The PaymentMethod Column.
				- Checking Missing Value on PaymentMethod Column.
			- MonthlyCharges Column.
				- Changing The Data Type on MonthlyCharges Column.
				- Checking The MonthlyCharges Column.
				- Checking Missing Value on MonthlyCharges Column.
			- TotalCharges Column.
				- Changing The Data Type on TotalCharges Column.
				- Checking The TotalCharges Column.
				- Changing The Value on The TotalCharges.
				- Checking Missing Value on TotalCharges Column.
			- Churn Column.
				- Checking The Churn Column.
				- Checking Missing Value on gender Churn.
	- Data Exploration
		- Checking The Number of Customer Who Churned.
		- Checking The Number of Customers Based on The Gender.
			- Checking The Number of Gender Who Churn.
		- Checking The Number of Customers Based on The Senior Citizen Status.
			- Checking The Number of Customer Who Churn Based on The Senior Citizen Status.
			- Checking The Number of Gender Based on The Senior Citizen.
		- Checking The Number of Customers Based on The Partner Status.
			- Checking The Number of Customer Who Churn Based on The Partner Status.
			- Checking The Number of Gender Based on The Partner Status.
		- Checking The Number of Customers Based on The Dependents Status.
			- Checking The Number of Customer Who Churn Based on The Dependents Status.
			- Checking The Number of Gender Based on The Dependents Status.
		- Checking The Number of Customers Based on The Tenure Status.
			- Checking The Number of Customer Who Churn Based on The Tenure Status.
			- Checking The Number of Gender Based on The Tenure Status.
		- Checking The Number of Customers Based on The Phone Service.
			- Checking The Number of Customer Who Churn Based on The Phone Service.
			- Checking The Number of Gender Based on The Phone Service.
		- Checking The Number of Customers Based on The Multiple Lines Status.
			- Checking The Number of Customer Who Churn Based on The Multiple Lines Service.
			- Checking The Number of Gender Based on The Multiple Lines Service.
		- Checking The Number of Customers Based on The Internet Service.
			- Checking The Number of Customer Who Churn Based on The Internet Service.
			- Checking The Number of Gender Based on The Internet Service.
		- Checking The Number of Customers Based on The Online Security Service.
			- Checking The Number of Customer Who Churn Based on The Online Security Service.
			- Checking The Number of Gender Based on The Online Security Service.
		- Checking The Number of Customers Based on The Online Backup Service.
			- Checking The Number of Customer Who Churn Based on The Online Backup Service.
			- Checking The Number of Gender Based on The Online Backup Service.
		- Checking The Number of Customers Based on The Device Protection Service.
			- Checking The Number of Customer Who Churn Based on The Device Protection Service.
			- Checking The Number of Gender Based on The Device Protection Service.
		- Checking The Number of Customers Based on The Tech Support Service.
			- Checking The Number of Customer Who Churn Based on The Tech Support Service.
			- Checking The Number of Gender Based on The Tech Support Service.
		- Checking The Number of Customers Based on The Streaming TV Service.
			- Checking The Number of Customer Who Churn Based on The Streaming TV Service.
			- Checking The Number of Gender Based on The Streaming TV Service.
		- Checking The Number of Customers Based on The Streaming Movies Service.
			- Checking The Number of Customer Who Churn Based on The Streaming Movies Service.
			- Checking The Number of Gender Based on The Streaming Movies Service.
		- Checking The Number of Customers Based on The Contract.
			- Checking The Number of Customer Who Churn Based on The Contract.
			- Checking The Number of Gender Based on The Contract.
		- Checking The Number of Customers Based on The Paperless Billing Status.
			- Checking The Number of Customer Who Churn Based on The Paperless Billing Status.
			- Checking The Number of Gender Based on The Paperless Billing Status.
		- Checking The Number of Customers Based on The Payment Method Status.
			- Checking The Number of Customer Who Churn Based on The Payment Method Status.
			- Checking The Number of Gender Based on The Payment Method Status.
		- Checking The Average of Monthly Charges Based on The Senior Citizen Status.
		- Checking The Average of Monthly Charges Based on The Gender.
		- Checking The Average of Total Charges Based on The Senior Citizen Status.
		- Checking The Average of Total Charges Based on The Gender.

- Analyzing Using Python
	- Data Profiling
		- Importing Library.
		- Importing Data.
		- Showing The Length of The Data.
		- Showing The Shape of The Data.
		- Showing The Information of The Data.
	- Data Cleansing
		- Checking The customerID Column.
			- Renaming The Column's Name.
			- Displaying The CustomerID Column.
			- Checking The Number of CustomerID.
			- Checking The Description of The CustomerID Column.
			- Checking The Missing Value in The CustomerID Column.
		- Checking The Gender Column.
			- Displaying The Gender Column.
			- Renaming The Column's Name.
			- Checking The Number of Gender.
			- Checking The Description of The Gender Column.
			- Checking The Missing Value in The Gender Column.
		- Checking The SeniorCitizen Column.
			- Displaying The SeniorCitizen Column.
			- Changing The Writing of The Value in The SeniorCitizen Column.
			- Checking The Number of SeniorCitizen.
			- Checking The Description of The SeniorCitizen Column.
			- Checking The Missing Value in The SeniorCitizen Column.
		- Checking The Partner Column.
			- Displaying The Partner Column.
			- Changing The Writing of The Value in The Partner Column.
			- Checking The Number of Partner.
			- Checking The Description of The Partner Column.
			- Checking The Missing Value in The Partner Column.
		- Checking The Dependents Column.
			- Displaying The Dependents Column.
			- Changing The Writing of The Value in The Dependents Column.
			- Checking The Number of Dependents.
			- Checking The Description of The Dependents Column.
			- Checking The Missing Value in The Dependents Column.
		- Checking The tenure Column.
			- Displaying The tenure Column.
			- Renaming The Column's Name.
			- Checking The Number of Tenure.
			- Changing The Writing of The Value in The Tenure Column.
			- Checking The Number of Tenures.
			- Checking The Description of The Tenures Column.
			- Checking The Missing Value in The Tenures Column.
		- Checking The PhoneService Column.
			- Displaying The PhoneService Column.
			- Changing The Writing of The Value in The PhoneService Column.
			- Checking The Number of PhoneService.
			- Checking The Description of The PhoneService Column.
			- Checking The Missing Value in The PhoneService Column.
		- Checking The MultipleLines Column.
			- Displaying The MultipleLines Column.
			- Changing The Writing of The Value in The MultipleLines Column.
			- Checking The Number of MultipleLines.
			- Checking The Description of The MultipleLines Column.
			- Checking The Missing Value in The MultipleLines Column.
		- Checking The InternetService Column.
			- Displaying The InternetService Column.
			- Changing The Writing of The Value in The InternetService Column.
			- Checking The Number of InternetService.
			- Checking The Description of The InternetService Column.
			- Checking The Missing Value in The InternetService Column.
		- Checking The OnlineSecurity Column.
			- Displaying The OnlineSecurity Column.
			- Changing The Writing of The Value in The OnlineSecurity Column.
			- Checking The Number of OnlineSecurity.
			- Checking The Description of The OnlineSecurity Column.
			- Checking The Missing Value in The OnlineSecurity Column.
		- Checking The OnlineBackup Column.
			- Displaying The OnlineBackup Column.
			- Changing The Writing of The Value in The OnlineBackup Column.
			- Checking The Number of OnlineBackup.
			- Checking The Description of The OnlineBackup Column.
			- Checking The Missing Value in The OnlineBackup Column.
		- Checking The DeviceProtection Column.
			- Displaying The DeviceProtection Column.
			- Changing The Writing of The Value in The DeviceProtection Column.
			- Checking The Number of DeviceProtection.
			- Checking The Description of The DeviceProtection Column.
			- Checking The Missing Value in The DeviceProtection Column.
		- Checking The TechSupport Column.
			- Displaying The TechSupport Column.
			- Changing The Writing of The Value in The TechSupport Column.
			- Checking The Number of TechSupport.
			- Checking The Description of The TechSupport Column.
			- Checking The Missing Value in The TechSupport Column.
		- Checking The StreamingTV Column.
			- Displaying The StreamingTV Column.
			- Changing The Writing of The Value in The StreamingTV Column.
			- Checking The Number of StreamingTV.
			- Checking The Description of The StreamingTV Column.
			- Checking The Missing Value in The StreamingTV Column.
		- Checking The StreamingMovies Column.
			- Displaying The StreamingMovies Column.
			- Changing The Writing of The Value in The StreamingMovies Column.
			- Checking The Number of StreamingMovies.
			- Checking The Description of The StreamingMovies Column.
			- Checking The Missing Value in The StreamingMovies Column.
		- Checking The Contract Column.
			- Displaying The Contract Column.
			- Changing The Writing of The Value in The Contract Column.
			- Checking The Number of Contract.
			- Checking The Description of The Contract Column.
			- Checking The Missing Value in The Contract Column.
		- Checking The PaperlessBilling Column.
			- Displaying The PaperlessBilling Column.
			- Changing The Writing of The Value in The PaperlessBilling Column.
			- Checking The Number of PaperlessBilling.
			- Checking The Description of The PaperlessBilling Column.
			- Checking The Missing Value in The PaperlessBilling Column.
		- Checking The PaymentMethod Column.
			- Displaying The PaymentMethod Column.
			- Changing The Writing of The Value in The PaymentMethod Column.
			- Checking The Number of PaymentMethod.
			- Checking The Description of The PaymentMethod Column.
			- Checking The Missing Value in The PaymentMethod Column.
		- Checking The MonthlyCharges Column.
			- Displaying The MonthlyCharges Column.
			- Checking The Description of The MonthlyCharges Column.
			- Checking The Missing Value in The MonthlyCharges Column.
		- Checking The TotalCharges Column.
			- Displaying The Data.
			- Creating A New Column Called TotalCharge.
			- Removing Data That Has 0 Value in The TotalCharge Column.
			- Checking The Description of The TotalCharge Column.
		- Checking The Churn Column.
			- Displaying The Churn Column.
			- Changing The Writing of The Value in The Churn Column.
			- Checking The Number of Churn.
			- Checking The Description of The Churn Column.
			- Checking The Missing Value in The Churn Column.
	- Data Exploration
		- Checking The Number of Customer Who Churned.
		- Checking The Number of Customers Based on The Gender.
			- Checking The Number of Gender Who Churn.
		- Checking The Number of Customers Based on The Senior Citizen Status.
			- Checking The Number of Customer Who Churn Based on The Senior Citizen Status.
			- Checking The Number of Gender Based on The Senior Citizen.
		- Checking The Number of Customers Based on The Partner Status.
			- Checking The Number of Customer Who Churn Based on The Partner Status.
			- Checking The Number of Gender Based on The Partner Status.
		- Checking The Number of Customers Based on The Dependents Status.
			- Checking The Number of Customer Who Churn Based on The Dependents Status.
			- Checking The Number of Gender Based on The Dependents Status.
		- Checking The Number of Customers Based on The Tenure Status.
			- Checking The Number of Customer Who Churn Based on The Tenure Status.
			- Checking The Number of Gender Based on The Tenure Status.
		- Checking The Number of Customers Based on The Phone Service.
			- Checking The Number of Customer Who Churn Based on The Phone Service.
			- Checking The Number of Gender Based on The Phone Service.
		- Checking The Number of Customers Based on The Multiple Lines Status.
			- Checking The Number of Customer Who Churn Based on The Multiple Lines Service.
			- Checking The Number of Gender Based on The Multiple Lines Service.
		- Checking The Number of Customers Based on The Internet Service.
			- Checking The Number of Customer Who Churn Based on The Internet Service.
			- Checking The Number of Gender Based on The Internet Service.
		- Checking The Number of Customers Based on The Online Security Service.
			- Checking The Number of Customer Who Churn Based on The Online Security Service.
			- Checking The Number of Gender Based on The Online Security Service.
		- Checking The Number of Customers Based on The Online Backup Service.
			- Checking The Number of Customer Who Churn Based on The Online Backup Service.
			- Checking The Number of Gender Based on The Online Backup Service.
		- Checking The Number of Customers Based on The Device Protection Service.
			- Checking The Number of Customer Who Churn Based on The Device Protection Service.
			- Checking The Number of Gender Based on The Device Protection Service.
		- Checking The Number of Customers Based on The Tech Support Service.
			- Checking The Number of Customer Who Churn Based on The Tech Support Service.
			- Checking The Number of Gender Based on The Tech Support Service.
		- Checking The Number of Customers Based on The Streaming TV Service.
			- Checking The Number of Customer Who Churn Based on The Streaming TV Service.
			- Checking The Number of Gender Based on The Streaming TV Service.
		- Checking The Number of Customers Based on The Streaming Movies Service.
			- Checking The Number of Customer Who Churn Based on The Streaming Movies Service.
			- Checking The Number of Gender Based on The Streaming Movies Service.
		- Checking The Number of Customers Based on The Contract.
			- Checking The Number of Customer Who Churn Based on The Contract.
			- Checking The Number of Gender Based on The Contract.
		- Checking The Number of Customers Based on The Paperless Billing Status.
			- Checking The Number of Customer Who Churn Based on The Paperless Billing Status.
			- Checking The Number of Gender Based on The Paperless Billing Status.
		- Checking The Number of Customers Based on The Payment Method Status.
			- Checking The Number of Customer Who Churn Based on The Payment Method Status.
			- Checking The Number of Gender Based on The Payment Method Status.
		- Checking The Monthly Charges Column.
			- Checking The Average of Monthly Charges Based on The Senior Citizen Status.
			- Checking The Average of Monthly Charges Based on The Gender.
		- Checking The Total Charges Column.
			- Checking The Average of Total Charges Based on The Senior Citizen Status.
			- Checking The Average of Total Charges Based on The Gender.
		- Checking The Outliers.

## Data Source
Source: https://www.kaggle.com/blastchar/telco-customer-churn
