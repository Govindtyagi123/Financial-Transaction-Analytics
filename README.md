# Financial Transaction Analytics

## 📌 Project Overview

**Financial Transaction Analytics** is an end-to-end data analytics project focused on analyzing financial transaction data to identify patterns in revenue, customers, products, payment methods, transaction statuses, and time-based performance.

The project follows a complete analytics workflow:

**Python → Data Cleaning → SQL Analysis → Power BI Dashboard → Business Insights**

---

## 🎯 Project Objectives

- Clean and preprocess raw financial transaction data
- Handle missing and invalid data
- Analyze customer purchasing behavior
- Analyze product performance
- Analyze revenue and transaction trends
- Analyze payment methods and transaction statuses
- Build an interactive Power BI dashboard
- Generate meaningful business insights from transaction data

---

## 📊 Dataset

The project uses a financial transactions dataset containing approximately **100,000 raw transaction records**.

### Main Columns

| Column | Description |
|---|---|
| `Transaction_ID` | Unique transaction identifier |
| `Transaction_Date` | Date of the transaction |
| `Customer_ID` | Customer identifier |
| `Product_Name` | Product purchased |
| `Quantity` | Quantity purchased |
| `Price` | Price of the product |
| `Payment_Method` | Payment method used |
| `Transaction_Status` | Status of the transaction |

---

# 🛠️ Tools & Technologies

### Python
- Python
- Pandas
- NumPy
- Jupyter Notebook

### SQL
- MySQL
- Aggregate Functions
- GROUP BY
- Subqueries
- CASE Statements
- Window Functions
- Date Functions

### Power BI
- Power BI
- DAX
- KPI Cards
- Bar Charts
- Column Charts
- Line Charts
- Donut Charts
- Matrix
- Interactive Slicers

---

# 🔄 Project Workflow

```text
Raw Financial Transaction Data
            ↓
     Python Data Cleaning
            ↓
      Cleaned Dataset
            ↓
       MySQL / SQL
            ↓
       Data Analysis
            ↓
       Power BI Dashboard
            ↓
      Business Insights
```

---

# 🐍 1. Python — Data Cleaning

Python and Pandas were used to inspect and clean the raw financial transaction dataset.

### Data Cleaning Steps

- Checked missing values
- Identified invalid negative quantity values
- Identified invalid negative price values
- Handled missing quantity values
- Handled missing price values
- Handled missing transaction status
- Converted transaction dates into the correct date format
- Prepared the cleaned dataset for SQL analysis

The complete Python notebook is available in:

```text
Python/
└── clean_financial_transactions.ipynb
```

---

# 🗄️ 2. SQL — Data Analysis

The cleaned financial transaction data was analyzed using MySQL.

SQL analysis was divided into five categories.

### Basic Business Analysis

- Total transactions
- Unique customers
- Total quantity
- Total revenue
- Average price
- Average quantity
- Average transaction value

File:

```text
SQL/
└── Basic Business Analysis.sql
```

### Customer Analysis

- Transactions per customer
- Customer spending
- Average customer spending
- Top customers by revenue
- Top customers by transaction count
- Top customers by quantity
- One-time customers
- Repeat customers

File:

```text
SQL/
└── Customer Analysis.sql
```

### Date & Time Analysis

- Daily revenue
- Monthly revenue
- Monthly transaction volume
- Highest-revenue month
- Highest-transaction month
- Highest-revenue day
- Product performance by month

File:

```text
SQL/
└── Date and Time Analysis.sql
```

### Payment & Transaction Analysis

- Transactions by payment method
- Revenue by payment method
- Average transaction value by payment method
- Transaction status distribution
- Revenue by transaction status
- Completed transaction percentage
- Payment methods associated with unsuccessful transactions

File:

```text
SQL/
└── Payment & Transaction Analysis.sql
```

### Product Analysis

- Revenue by product
- Transaction count by product
- Quantity sold by product
- Average product price
- Average transaction value by product
- Product revenue contribution
- Unique customers by product
- Repeat customer analysis

File:

```text
SQL/
└── Product_Analyzing.sql
```

---

# 📈 3. Power BI Dashboard

The cleaned data was used to create an interactive **Financial Transactions Power BI Dashboard**.

The dashboard contains three pages.

## Page 1 — Executive Overview

This page provides an overall view of financial transaction performance.

### Key Metrics

- Unique Customers
- Total Transactions
- Total Quantity
- Total Revenue
- Average Transaction Value

### Visualizations

- Revenue by Payment Method
- Monthly Revenue
- Revenue by Product
- Daily Revenue
- Transaction Status Distribution

### Filters

- Year
- Product
- Payment Method
- Transaction Status

![Page 1 - Executive Overview](Power%20BI/page1_executive_overview.png)

---

## Page 2 — Product & Customer Analysis

This page focuses on product performance and customer behavior.

### Visualizations

- Products by Revenue
- Products by Quantity
- Top 10 Customers by Revenue
- Top 10 Customers by Transactions
- Top 10 Customers by Quantity
- Products by Average Price
- Product Performance Matrix

### Product Performance Matrix

The matrix contains:

```text
Product
Revenue
Total Quantity
Average Selling Price
Total Transactions
```

![Page 2 - Product & Customer Analysis](Power%20BI/page2_executive_overview.png)

---

## Page 3 — Transaction & Payment Analysis

This page focuses on transaction behavior, payment methods, and transaction statuses.

### Visualizations

- Monthly Transactions
- Transactions by Payment Method
- Revenue by Payment Method
- Revenue by Transaction Status
- Transactions by Transaction Status

### Filters

- Payment Method
- Transaction Status

![Page 3 - Transaction & Payment Analysis](Power%20BI/page3_executive_overview.png)

---

# 📐 DAX Measures

### Total Revenue

```DAX
Total Revenue =
SUMX(
    cleaned_financial_transactions,
    cleaned_financial_transactions[Quantity] *
    cleaned_financial_transactions[Price]
)
```

### Total Transactions

```DAX
Total Transactions =
COUNTROWS(cleaned_financial_transactions)
```

### Unique Customers

```DAX
Unique Customers =
DISTINCTCOUNT(
    cleaned_financial_transactions[Customer_ID]
)
```

### Total Quantity

```DAX
Total Quantity =
SUM(
    cleaned_financial_transactions[Quantity]
)
```

### Average Transaction Value

```DAX
Average Transaction Value =
DIVIDE(
    [Total Revenue],
    [Total Transactions]
)
```

### Average Selling Price

```DAX
Average Selling Price =
AVERAGE(
    cleaned_financial_transactions[Price]
)
```

---

# 💡 Business Questions Answered

### Business Performance
- What is the total revenue?
- How many transactions occurred?
- How many unique customers are there?
- What is the average transaction value?

### Product Performance
- Which products generate the most revenue?
- Which products have the highest quantity sold?
- Which products have the highest average price?
- How many transactions does each product generate?

### Customer Behavior
- Which customers generate the highest revenue?
- Which customers make the most transactions?
- Which customers purchase the highest quantity?
- How many customers are repeat customers?

### Payment & Transactions
- Which payment method has the highest transaction volume?
- Which payment method generates the highest revenue?
- What percentage of transactions are completed?
- How are transactions distributed across different statuses?

### Time-Based Performance
- How does revenue change over time?
- Which month generates the highest revenue?
- Which month has the highest transaction volume?
- Which day generates the highest revenue?

---

# 📁 Project Structure

```text
Financial_Transaction_Analytics/
│
├── data/
│   ├── cleaned_financial_transaction
│   └── financial-transactions
│
├── Power BI/
│   ├── Financial Transactions.pbix
│   ├── page1_executive_overview.png
│   ├── page2_executive_overview.png
│   └── page3_executive_overview.png
│
├── Python/
│   └── clean_financial_transactions.ipynb
│
├── SQL/
│   ├── Basic Business Analysis.sql
│   ├── Customer Analysis.sql
│   ├── Date and Time Analysis.sql
│   ├── Payment & Transaction Analysis.sql
│   └── Product_Analyzing.sql
│
└── README.md
```

---

# 📌 Key Skills Demonstrated

- Data Cleaning
- Data Preprocessing
- Exploratory Data Analysis
- Python
- Pandas
- NumPy
- Jupyter Notebook
- SQL
- MySQL
- Data Aggregation
- Customer Analytics
- Product Analytics
- Financial Analytics
- Power BI
- DAX
- Data Visualization
- Dashboard Development
- Business Insight Generation

---

# 🚀 Conclusion

This project demonstrates a complete **end-to-end data analytics workflow**, from cleaning raw financial transaction data to performing SQL-based analysis and developing an interactive Power BI dashboard.

The project showcases practical skills in **Python, SQL, MySQL, Power BI, DAX, data cleaning, data analysis, visualization, and business intelligence**.

---

## 👤 Author

**Govind Tyagi**

**Skills:** Python | SQL | Power BI | Excel | Data Analysis | Machine Learning

**GitHub:** [Govindtyagi123](https://github.com/Govindtyagi123)
