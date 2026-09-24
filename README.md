# Financial Transaction Analytics

## 📌 Project Overview

This project is an end-to-end **Financial Transaction Analytics** project designed to analyze transaction, customer, product, payment, and transaction-status data.

The project follows a complete data analytics workflow:

**Raw Data → Python Data Cleaning → MySQL SQL Analysis → Power BI Dashboard → Business Insights**

The objective is to transform raw and inconsistent transaction data into meaningful business insights using Python, SQL, and Power BI.

---

## 🎯 Project Objectives

- Clean and prepare raw financial transaction data
- Handle missing and invalid values
- Analyze product and customer performance
- Analyze payment methods and transaction statuses
- Identify revenue and transaction trends over time
- Build an interactive Power BI dashboard
- Generate business-focused insights from the data

---

## 📊 Dataset

The original dataset contains approximately **100,000 financial transaction records**.

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

## 🛠️ Tools & Technologies

### Python
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook

### SQL
- MySQL
- SQL Aggregations
- GROUP BY
- Subqueries
- CASE statements
- Window Functions
- Date-based Analysis

### Power BI
- Power BI
- DAX
- Interactive Slicers
- KPI Cards
- Bar Charts
- Column Charts
- Line Charts
- Donut Charts
- Matrix

---

## 🔄 Project Workflow

```text
Raw Dataset
     ↓
Python Data Cleaning
     ↓
Cleaned Dataset
     ↓
MySQL Database
     ↓
SQL Analysis
     ↓
Power BI
     ↓
Interactive Dashboard
     ↓
Business Insights
```

---

# 🐍 1. Python Data Cleaning

Python was used to inspect, clean, and prepare the raw dataset before performing SQL analysis.

### Data Cleaning Performed

- Checked missing values
- Identified invalid negative quantities
- Identified invalid negative prices
- Replaced invalid quantity values with appropriate values
- Imputed missing price values using product-level median values
- Used an overall median as a fallback for missing prices
- Handled missing transaction status using `Unknown`
- Converted `Transaction_Date` into the correct date format
- Prepared the final cleaned dataset for MySQL analysis

### Output

The cleaned dataset was exported as:

```text
cleaned_transactions.csv
```

---

# 🗄️ 2. MySQL Analysis

The cleaned dataset was imported into MySQL for business analysis.

### Analysis Performed

#### Overall Business Analysis
- Total transactions
- Unique customers
- Total quantity
- Total revenue
- Average transaction value

#### Product Analysis
- Revenue by product
- Transaction count by product
- Total quantity by product
- Average product price
- Average transaction value by product
- Product revenue contribution

#### Customer Analysis
- Transactions per customer
- Customer spending
- Average customer transaction value
- Top customers by revenue
- Top customers by transactions
- Top customers by quantity
- One-time vs repeat customers

#### Payment Analysis
- Transactions by payment method
- Revenue by payment method
- Average transaction value by payment method
- Payment method with the highest transaction volume

#### Transaction Status Analysis
- Transaction status distribution
- Revenue by transaction status
- Transaction status by payment method
- Completed transaction percentage
- Missing/unknown transaction status

#### Time-Based Analysis
- Daily revenue
- Monthly revenue
- Monthly transaction volume
- Highest-revenue month
- Highest-transaction month
- Highest-revenue day
- Top product by revenue for each month

---

# 📊 3. Power BI Dashboard

The final cleaned data and analytical results were used to create an interactive Power BI dashboard.

## Page 1 — Executive Overview

This page provides a high-level view of business performance.

### KPIs
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

### Slicers
- Year
- Product
- Payment Method
- Transaction Status

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

The matrix combines:

```text
Product
Revenue
Total Quantity
Average Selling Price
Total Transactions
```

---

## Page 3 — Transaction & Payment Analysis

This page focuses on transaction behavior and payment patterns.

### Visualizations

- Monthly Transactions
- Transactions by Payment Method
- Revenue by Payment Method
- Revenue by Transaction Status
- Transactions by Transaction Status

### Slicers

- Payment Method
- Transaction Status

---

# 📐 DAX Measures

The Power BI dashboard uses DAX measures for key business metrics.

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

# 📈 Dashboard Metrics

Based on the current cleaned dataset used in the Power BI dashboard:

| Metric | Value |
|---|---:|
| Total Transactions | 85,080 |
| Unique Customers | ~5,000 |
| Total Quantity | ~18.32M |
| Total Revenue | ~₹9.58B |
| Average Transaction Value | ~₹112.61K |

*Values may change depending on applied dashboard filters.*

---

# 💡 Business Questions Answered

This project answers questions such as:

- What is the total revenue generated?
- How many transactions were completed?
- How many unique customers made purchases?
- Which products generate the most revenue?
- Which products have the highest sales quantity?
- Which customers contribute the most revenue?
- Which customers make the most transactions?
- Which payment method generates the most revenue?
- How are transactions distributed by status?
- Which months generate the highest revenue?
- Which days have the highest revenue?
- How does transaction activity change over time?

---

# 📁 Project Structure

```text
financial-transaction-analytics/
│
├── notebooks/
│   └── financial_transaction_analysis.ipynb
│
├── python/
│   └── financial_transaction_analysis.py
│
├── sql/
│   └── financial_transaction_analysis.sql
│
├── data/
│   └── cleaned_transactions.csv
│
├── dashboard/
│   ├── page1_executive_overview.png
│   ├── page2_product_customer.png
│   └── page3_transaction_payment.png
│
├── README.md
└── .gitignore
```

---

# 📸 Dashboard Preview

## Page 1 — Executive Overview

![Executive Overview](dashboard/page1_executive_overview.png)

## Page 2 — Product & Customer Analysis

![Product & Customer Analysis](dashboard/page2_product_customer.png)

## Page 3 — Transaction & Payment Analysis

![Transaction & Payment Analysis](dashboard/page3_transaction_payment.png)

---

# 🔍 Key Skills Demonstrated

- Data Cleaning
- Data Preprocessing
- Exploratory Data Analysis
- Python
- Pandas
- NumPy
- SQL
- MySQL
- Data Aggregation
- Customer Analysis
- Product Analysis
- Financial Analysis
- Power BI
- DAX
- Data Visualization
- Dashboard Development
- Business Insight Generation

---

# 🚀 Conclusion

This project demonstrates an end-to-end data analytics workflow, starting from raw transaction data and progressing through **data cleaning, SQL analysis, dashboard development, and business insights**.

It demonstrates practical skills required for entry-level **Data Analyst, Business Intelligence, Reporting, Financial Analytics, and related data roles**.

---

## 👤 Author

**Govind Tyagi**

Data Analytics | Python | SQL | Power BI | Excel

GitHub: [Govindtyagi123](https://github.com/Govindtyagi123)
