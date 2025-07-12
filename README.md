# 🛍️ Online Retail Sales Analysis

This project analyzes transaction data from a UK-based online retail store (UCI Machine Learning Repository). The goal was to derive business insights by combining SQL-based data wrangling with Python-based data visualization.

---

## 🔧 Tools & Technologies

- **MySQL** – for querying and aggregating KPIs via views and joins  
- **SQLAlchemy** – to connect MySQL with Python inside a Jupyter Notebook  
- **Pandas** – for data handling and cleaning in Python  
- **Seaborn & Matplotlib** – for plotting insightful visualizations  

---

## 📈 Key KPIs & SQL Views Created

| Metric                                | SQL View Name                         |
|---------------------------------------|----------------------------------------|
| Monthly Sales Trend                   | `monthly_sales_trend`                  |
| Top 10 Products by Revenue            | `top_10_revenue_products`              |
| Top 10 Products by Quantity Sold      | `top_10_products_by_quantity`          |
| Most Frequently Bought Products       | `most_frequently_bought_items`         |
| Products with Most Cancellations      | `products_with_most_cancellations`     |
| Top 10 Customers by Revenue           | `top10_customers_by_revenue`           |
| Average Order Value per Customer      | `avg_order_value_per_customer`         |
| Total Revenue per Country             | `total_revenue_per_country`            |
| Unique Customers per Country          | `unique_customers_per_country`         |
| Sequential Purchases (A → B)          | Self-join query using invoice dates    |

---

## 📊 Visualizations in Notebook

Once the views were created in MySQL, SQLAlchemy was used to pull data into Python. The following visualizations were implemented:

- 📉 **Line plot** for monthly revenue trend  
- 📊 **Horizontal bar plot** for top products by revenue  
- 🌍 **Heatmap** of revenue distribution across countries  
- 📦 **Bar chart** for most frequently bought items  
- 🧍 **Count plot** for number of unique customers per country  

---

## 💡 Project Highlights

- Built **11 SQL views** for reusable KPI computation
- Utilized **SQL joins and aggregations** for deeper customer insights
- Used **Python only for visualization**, maintaining clean separation of concerns
- Demonstrated **sequential purchase logic** with self-joins on invoice dates
- Produced **publication-ready visualizations** using Seaborn & Matplotlib

---

## 📁 Dataset

- [UCI Online Retail Dataset](https://archive.ics.uci.edu/ml/datasets/online+retail)

---


---

Feel free to ⭐️ this repo if you find it helpful or fork it for your own analysis!
