# 🛍️ E-commerce & Marketing Analytics Dashboard (2025)

An end-to-end **Power BI** project analyzing an online retail business across **sales, marketing, funnel performance, and customer behavior** using a star-schema data model.

---

## 🎯 Project Overview

This project brings together **sales transactions, marketing campaigns, web events, and customer demographics** into a single analytics solution.  
The goal is to help stakeholders answer:
- How are **sales and revenue** trending?
- Which **channels and campaigns** deliver the best **ROI / ROAS**?
- Where do customers **drop off** in the purchase funnel?
- Who are our **most valuable customer segments**?

I designed a **4-page Power BI dashboard** that gives a 360° view of performance for a fictional e-commerce business.

---

## 🧩 Data & Model

The dataset is **synthetic but realistic**, generated to mimic an e-commerce business with:

- **5K customers**
- **50K orders**
- **9 related tables** (fact + dimension)

**Star Schema Tables**

- `dim_customer` – customer demographics & acquisition channel  
- `dim_product` – product attributes (category, price band, etc.)  
- `dim_date` – calendar table for time-based analysis  
- `dim_channel` – marketing channels (Organic, Paid, Email, Referral, Social)  
- `dim_campaign` – campaign names, periods, and channel  
- `fact_orders` – order-level metrics (revenue, discount, shipping, cost)  
- `fact_order_items` – product-level line items  
- `fact_marketing_spend` – daily spend, impressions, clicks by campaign & channel  
- `fact_web_events` – website sessions and events (visit, add_to_cart, checkout, purchase)

> All data is synthetic and created for learning + portfolio purposes only.

---

## 📊 Dashboard Pages

### 1️⃣ Sales & Marketing Performance Overview
- KPIs: **Revenue, Orders, AOV, Spend, ROAS, ROI**
- Revenue and orders trend over time
- Revenue by product category / region
- High-level view for business stakeholders

### 2️⃣ Marketing Performance & ROI Insights
- **ROAS & ROI by channel**
- Campaign spend distribution
- Monthly ROI trend
- Helps answer: *Where should we increase or reduce marketing spend?*

### 3️⃣ Conversion Funnel & Behavior Insights
- Funnel: **Visits → Add to Cart → Checkout → Purchase**
- Overall conversion rate (~9.6%)
- Conversion by **channel** and **device**
- Highlights key drop-off points in the customer journey

### 4️⃣ Customer Insights & Retention Analysis
- Total and returning customers (≈ 5K)
- Revenue by **age band**, **gender**, and **city**
- Orders by acquisition channel
- Top customers by revenue

---

## 🔍 Key Highlights

I modeled a unified analytics system using nine relational fact and dimension tables, enabling seamless integration of sales, marketing, web events, and customer data. I developed DAX measures for **Revenue, ROI, ROAS, AOV, multi-stage conversion rates, and retention metrics**, allowing deeper insight into business performance. The dashboard revealed a **9.6% overall conversion rate** and a **361% marketing ROI**, while highlighting top-performing channels such as **Organic Search** and **Paid Search**. I visualized insights through KPI cards, a full conversion funnel, treemap, donut, line, and map visuals, using a clean **blue-green Power BI theme**. The analysis delivered clear business value by identifying ad efficiency opportunities, reducing drop-off points in the customer journey, and highlighting high-value customer segments.

---

## 🧰 Tools & Skills

- **Power BI Desktop** – data modeling, DAX, dashboard design  
- **DAX** – custom KPIs (ROI, ROAS, AOV, conversion, retention)  
- **SQL / CSV** – star-schema style tables (fact & dimension)  
- **Data Modeling** – star schema, relationships, fact/dim separation  
- **Data Visualization** – KPI cards, funnel, treemap, donut, line, bar, and map charts  

---

## 🖥️ How to Run the Dashboard

1. **Clone or download** this repository.
2. Open `Dashboard/Ecommerce_Analytics_Dashboard.pbix` in **Power BI Desktop**.
3. If needed, update file paths:
   - `Home → Transform data → Data source settings` and point to the `/Data/` folder.
4. Refresh the data and explore all 4 pages using the bottom page tabs.

---

## 📂 Repository Structure

```text
Ecommerce_Marketing_Analytics/
├── Data/
│   ├── dim_customer.csv
│   ├── dim_product.csv
│   ├── dim_date.csv
│   ├── dim_channel.csv
│   ├── dim_campaign.csv
│   ├── fact_orders.csv
│   ├── fact_order_items.csv
│   ├── fact_marketing_spend.csv
│   └── fact_web_events.csv
├── Dashboard/
│   ├── Ecommerce_Analytics_Dashboard.pbix
│   ├── Ecommerce_Analytics_Dashboard.pdf
│   └── Screenshots/
│       ├── Sales & Marketing Performance Overview.png
│       ├── Marketing Performance.png
│       ├── Conversion Funnel.png
│       └── Customer Insights & Retention.png
└── README.md
