# 🚛 Supply Chain & Logistics Analytics Dashboard

👥 A Collaborative Project by Liza Deka & Shubh Srivastava

An end-to-end Business Intelligence project that analyzes logistics operations using **SQL (PostgreSQL on Neon)** and **Microsoft Power BI**. The project analyzes 500,000+ logistics records across 14 interconnected relational tables to transform raw logistics data into interactive dashboards that provide actionable insights into revenue, customer performance, fleet operations, driver performance, and delivery efficiency.

---

## 📖 Project Overview

Efficient logistics operations rely on data-driven decision-making. This project demonstrates how operational data can be transformed into meaningful business insights through SQL analysis and interactive Power BI dashboards.

The project was completed as a **collaborative team project**, where dashboard development and documentation responsibilities were shared between two members. In addition to building the dashboards, the project also involved writing SQL queries, preparing SQL implementations for individual visualizations, deriving business insights from the analysis, and providing actionable business recommendations for each dashboard page.

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

## The dashboard is organized into five business-focused analytical pages:

* Executive Overview – Monitors overall business performance using revenue, profit, and operating cost KPIs.
* Customer & Route Performance – Analyzes customer profitability, freight categories, and transportation routes.
* Fleet Management – Tracks fleet assets, maintenance, downtime, and fuel expenditure.
* Driver Operations – Evaluates driver productivity and operational performance.
* Delivery & Safety Operations – Monitors delivery efficiency, safety incidents, and service performance.

---

# 👩‍💻 My Contribution

As part of this collaborative project, I was responsible for developing the Customer & Route Performance and Fleet Management pages, while also contributing to the Executive Overview.

My responsibilities included:

* Writing SQL queries to extract, aggregate, and analyze logistics data.
* Creating DAX measures and KPIs to support business reporting.
* Designing and developing interactive Power BI dashboards with slicers and business-focused visualizations.
* Building charts to analyze customer performance, transportation routes, fleet operations, maintenance, and fuel expenditure.
* Interpreting dashboard findings and preparing business insights based on the analysis.
* Developing actionable business recommendations to support operational and strategic decision-making.
* Preparing SQL implementation documentation for each visualization.
* Contributing to the project report, including dashboard documentation and analytical findings.

---

# 📈 Key DAX Measures

Some of the measures I created during this project include:

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
│   ├──Supply_chain_logistics.pbix
│
├── SQL/
│   ├── Executive Overview.sql
|   ├── Customer & Route performance.sql
|   ├── Fleet Management.sql
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

# 📷 Dashboard Preview

<img width="1907" height="771" alt="image" src="https://github.com/user-attachments/assets/684d868e-0cba-4450-b03c-17121423961c" />
<img width="1917" height="780" alt="image" src="https://github.com/user-attachments/assets/af9bcb49-4f34-4fc1-a838-cfb7ca4f61f0" />
<img width="1917" height="791" alt="image" src="https://github.com/user-attachments/assets/58111086-154b-4eb2-8e40-18303f839194" />
<img width="1917" height="785" alt="image" src="https://github.com/user-attachments/assets/a656b29d-95ab-4acd-8f7a-c9c26b9e6a62" />
<img width="1917" height="782" alt="image" src="https://github.com/user-attachments/assets/00314502-23d2-460d-af98-201681c68efe" />

---

# 👥 Collaboration

This project was completed in collaboration with Shubh Srivastava. We jointly worked on database preparation, SQL analysis, dashboard development, validation of business insights, and project documentation while taking ownership of different dashboard modules.
