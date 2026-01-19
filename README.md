# Customer Segmentation & Retention Analysis (RFM)

##  Project Overview
This project focuses on customer segmentation and retention analysis using real-world e-commerce transaction data.
The objective is to identify valuable customers, understand purchasing behavior, and support data-driven marketing and retention strategies.

The project follows an end-to-end data analytics workflow, starting from raw data exploration and cleaning, to advanced customer analytics (RFM), and finally business-oriented insights.

---

##  Business Problem
The business wants to answer the following questions:
- Who are the most valuable customers?
- Which customers are likely to become loyal?
- Which customers are at risk of churn?
- How can customer retention be improved using data?

Customer segmentation is a critical step in designing effective marketing and loyalty strategies.

---

##  Dataset
The dataset contains transactional data from a UK-based online retailer between **2009–2011**.

Key columns:
- `InvoiceNo`
- `InvoiceDate`
- `StockCode`
- `Description`
- `Quantity`
- `UnitPrice`
- `CustomerID`
- `Country`

---

##  Data Cleaning & Preparation
Data quality issues were identified and handled using business-driven rules:

- Removed transactions with missing `CustomerID` (required for customer-level analysis)
- Excluded returned items (`Quantity <= 0`)
- Removed transactions with invalid prices (`UnitPrice <= 0`)
- Removed rows with missing or invalid product descriptions
- Excluded non-product stock codes (e.g. POST, BANK CHARGES)

After cleaning, **396,773** valid transaction records remained.

---

##  RFM Analysis
Customer segmentation was performed using **RFM analysis**:

- **Recency:** Days since the customer's most recent purchase
- **Frequency:** Number of unique purchases
- **Monetary:** Total amount spent by the customer

Each metric was scored from 1 to 5, and customers were grouped into meaningful business segments.

### Total customers analyzed:
**4,337**

---

##  Key Insights
- Approximately **10% of customers (443)** are classified as **Champions**
- The largest segment is **Potential Loyalists**, representing the biggest growth opportunity
- Champions contribute a disproportionate share of total revenue
- Many customers can be converted into loyal customers with targeted engagement strategies

---

##  Customer Segments
- **Champions** – High-value, frequent, and recent customers
- **Loyal Customers** – Consistent repeat buyers
- **Potential Loyalists** – Customers with strong growth potential
- **At Risk** – Previously active customers showing declining engagement
- **Lost Customers** – Customers inactive for a long period

---

##  Tools & Technologies
- **Excel** – Initial data exploration and issue identification
- **Python (Pandas, NumPy)** – Data cleaning and RFM analysis
- **PostgreSQL** – Structured storage and SQL-based analysis
- **Power BI** – Customer segmentation dashboard and visualization

---

##  Dashboard
The Power BI dashboard includes:
- Customer count by RFM segment
- Revenue contribution by segment
- Comparison of Champions vs Potential Loyalists
- Interactive filters for segment-based analysis

The dashboard is designed to support marketing and retention decision-making.
---
