# 🚛 Supply Chain & Logistics Analytics Dashboard

An end-to-end Business Intelligence project that analyzes logistics operations using **SQL (PostgreSQL on Neon)** and **Microsoft Power BI**. The project analyzes 500,000+ logistics records across 14 interconnected relational tables to transform raw logistics data into interactive dashboards that provide actionable insights into revenue, customer performance, fleet operations, driver performance, and delivery efficiency.

---

## 📖 Project Overview

Supply chain and logistics organizations generate large volumes of operational data every day. Converting this data into meaningful insights is essential for improving operational efficiency, controlling costs, optimizing fleet performance, and supporting strategic business decisions.

This project demonstrates an end-to-end Business Intelligence workflow by integrating logistics data into PostgreSQL (Neon), performing SQL-based analysis, and developing interactive dashboards in Microsoft Power BI.

The project analyzes 500,000+ logistics records across 14 interconnected relational tables, covering customers, transportation routes, fleet assets, trips, fuel purchases, maintenance records, deliveries, and safety operations.
The final solution consists of five interactive dashboard pages that enable business users to monitor KPIs, identify operational trends, evaluate performance across different business functions, and make data-driven decisions through interactive visualizations.

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
|   ├──demo_video
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

This project was completed through a collaborative workflow, with responsibilities divided across different project modules while working together on the overall solution.

Work Distribution
- ✅ Processed and analyzed 500,000+ logistics records
- ✅ Integrated 14 relational database tables using PostgreSQL (Neon)
- ✅ Cleaned and prepared the project datasets
- ✅ Designed and developed 5 interactive Power BI dashboard pages
- ✅ Developed SQL queries, DAX measures, and Power BI visualizations
- ✅ Generated business insights and actionable recommendations
- ✅ Prepared the final technical report and project documentation jointly
- ✅ Performed dashboard testing, validation, and quality review together

---

# 📈 Key DAX Measures

To support business reporting and dashboard interactivity, I developed several custom DAX measures, including:

## Financial KPIs
- Total Revenue
- Gross Profit
- Total Operating Cost
- Fuel Cost % of Revenue
- Maintenance Cost % of Revenue
## Customer & Route Performance KPIs
- Average Revenue per Customer
- Average Revenue per Load
## Fleet Management KPIs
- Total Fleet Assets
- Active Fleet Assets
- Fleet Assets in Maintenance
- Total Fuel Cost
- Total Maintenance Cost

These measures were used to build interactive KPI cards, support dashboard visualizations, and provide business users with meaningful operational and financial insights.
