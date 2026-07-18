# 🚛 Supply Chain & Logistics Analytics Dashboard

An end-to-end Business Intelligence project that analyzes logistics operations using **SQL (PostgreSQL on Neon)** and **Microsoft Power BI**. The project transforms raw logistics data into interactive dashboards that provide actionable insights into revenue, customer performance, fleet operations, driver performance, and delivery efficiency.

---

## 📖 Project Overview

Efficient logistics operations rely on data-driven decision-making. This project demonstrates how operational data can be transformed into meaningful business insights through SQL analysis and interactive Power BI dashboards.

The project was completed as a **collaborative team project**, where dashboard development and documentation responsibilities were shared between two members.

---

## 🎯 Objectives

* Monitor overall business performance through financial and operational KPIs.
* Analyze customer profitability and transportation route performance.
* Evaluate fleet utilization, maintenance, and fuel expenditure.
* Monitor driver and delivery performance.
* Support business decisions through interactive dashboards and analytical insights.

---

## 🛠️ Tools & Technologies

* **Neon (PostgreSQL)** – Cloud database for SQL analysis
* **SQL** – Data extraction, joins, aggregations, and business analysis
* **Microsoft Power BI** – Dashboard development and visualization
* **DAX** – KPI calculations and custom measures
* **Microsoft Excel** – Data validation and preliminary exploration

---

## 🗄️ Database Overview

The project uses a relational logistics database consisting of **14 interconnected tables**, including:

* Drivers
* Trucks
* Trailers
* Customers
* Facilities
* Routes
* Loads
* Trips
* Fuel Purchases
* Maintenance Records
* Delivery Events
* Safety Incidents
* Driver Monthly Metrics
* Truck Utilization Metrics

The relational structure enables integrated analysis across multiple operational areas including customers, routes, fleet management, deliveries, fuel consumption, maintenance, and driver performance.

---

# 📊 Dashboard Pages

## 1. Executive Overview

Provides a high-level summary of business performance.

### KPIs

* Total Revenue
* Gross Profit
* Total Operating Cost
* Fuel Cost % of Revenue
* Maintenance Cost % of Revenue

### Visual

* Quarterly Revenue vs Operating Cost Trend

---

## 2. Customer & Route Performance *(My Contribution)*

Analyzes customer profitability and transportation route performance.

### KPIs

* Total Customers
* Total Loads
* Total Routes
* Average Revenue per Customer
* Average Revenue per Load

### Visualizations

* Top 10 Customers by Revenue
* Revenue Distribution by Freight Type
* Top Revenue-Generating Routes
* Most Frequently Used Routes

---

## 3. Fleet Management *(My Contribution)*

Provides insights into fleet utilization, maintenance, and operating expenses.

### KPIs

* Total Fleet Assets
* Active Fleet Assets
* Fleet Assets in Maintenance
* Total Fuel Cost
* Total Maintenance Cost

### Visualizations

* Maintenance Cost by Truck Make
* Downtime by Maintenance Type
* Quarterly Fuel Spending Trend
* Fleet Composition by Model Year

---

## 4. Driver Operations

Monitors driver productivity and operational performance.

---

## 5. Delivery & Safety Operations

Evaluates delivery efficiency and safety performance.

---

# 👩‍💻 My Contribution

I was responsible for developing the **Customer & Route Performance** and **Fleet Management** dashboards, while also contributing to the **Executive Overview**.

My responsibilities included:

* Writing SQL queries for business analysis
* Creating DAX measures and KPIs
* Building interactive Power BI dashboards
* Designing visualizations and slicers
* Developing business insights from analytical findings
* Preparing business recommendations
* Documenting SQL implementation and project report

---

# 📈 Key DAX Measures

Some of the measures created during this project include:

* Total Revenue
* Gross Profit
* Total Operating Cost
* Average Revenue per Customer
* Average Revenue per Load
* Total Fleet Assets
* Active Fleet Assets
* Fleet Assets in Maintenance
* Total Fuel Cost
* Total Maintenance Cost
* Fuel Cost % of Revenue
* Maintenance Cost % of Revenue

---

# 💡 Business Insights

The dashboards help answer key business questions such as:

* Which customers contribute the highest revenue?
* Which freight categories generate the most business?
* Which transportation routes are most profitable?
* How is fuel spending changing over time?
* Which truck manufacturers incur the highest maintenance costs?
* How is the fleet distributed across model years?
* Where are the biggest operational costs?

---

# 📁 Repository Structure

```text
📂 supply_chain_logistics_analytics
│
├── Dashboard/
│   ├── Logistics Dashboard.pbix
│
├── SQL/
│   ├── SQL Queries.sql
│
├── Report/
│   ├── Project Report.pdf
│
├── Images/
│   ├── Executive Overview.png
│   ├── Customer & Route Performance.png
│   ├── Fleet Management.png
│   ├── Driver Operations.png
│   └── Delivery & Safety Operations.png
│
└── README.md
```

---

# 🚀 Future Enhancements

* Real-time dashboard integration
* Predictive maintenance analytics
* Route optimization using machine learning
* Fuel consumption forecasting
* Automated KPI alerts

---

# 📷 Dashboard Preview

*Dashboard screenshots and a walkthrough video are available in this repository.*

---

## 👤 Author

**Liza Deka**

If you have any feedback, suggestions, or would like to connect, feel free to reach out. I'm always happy to discuss data analytics, SQL, and Power BI projects.
