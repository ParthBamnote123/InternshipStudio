Create database RetialSalesData;

Use RetialSalesData;

CREATE TABLE Sales_Data_Transactions (
customer_id VARCHAR(255),
trans_date VARCHAR(255),
tran_amount INT)

CREATE TABLE Sales_Data_Response (
customer_id VARCHAR(255) PRIMARY KEY,
response INT)

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Retail_Data_Transactions.csv'
INTO TABLE Sales_Data_Transactions
FIELDS terminated by ','
LINES terminated by '\n'
IGNORE 1 ROWS;

Select * from Sales_Data_Transactions;