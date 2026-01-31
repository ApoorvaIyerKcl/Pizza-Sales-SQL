# IDC Pizza - The Great Pizza Analytics Challenge

## Executive Summary

This project is part of the **21-Day SQL Challenge** organised by **Indian Data Club** and sponsored by **DPD Zero**. As the data analyst for **IDC Pizza**, I analysed pizza sales data to extract actionable insights using SQL. The project focuses on building strong foundations in **filtering**, **aggregations**, **joins**, and **data cleaning** through real business questions. I explored **category performance**, **pricing by size**, and **order value trends** to understand sales behaviour. Although the dataset is small, it is ideal for strengthening SQL thinking. With a larger dataset, I would extend this into **customer segmentation**, **repeat ordering**, and **profitability analysis**.

[21-Day SQL Challenge](https://indiandataclubsql.notion.site/The-Great-Pizza-Analytics-Challenge-296b804566108124a928f767a2951381)

[Presentation Link](https://www.linkedin.com/posts/apoorvaiyerkcl_%F0%9D%90%93%F0%9D%90%A1%F0%9D%90%9E-%F0%9D%90%86%F0%9D%90%AB%F0%9D%90%9E%F0%9D%90%9A%F0%9D%90%AD-%F0%9D%90%8F%F0%9D%90%A2%F0%9D%90%B3%F0%9D%90%B3%F0%9D%90%9A-%F0%9D%90%80%F0%9D%90%A7%F0%9D%90%9A%F0%9D%90%A5%F0%9D%90%B2%F0%9D%90%AD-activity-7404013346909421568-f7wt?utm_source=share&utm_medium=member_desktop&rcm=ACoAADBJCkIBhzi-lCIscl0rmj3ASTU9yUcwIOc)

## Business Problem

IDC Pizza needs better visibility into:

1. Which **pizza categories** are performing best in terms of **sales volume**
2. How **pizza prices** vary across different **sizes**
3. What the **total order value** looks like per order
4. Which pizzas have **zero demand** and may need menu optimisation
5. Whether any critical fields like **price** or **ingredients** contain **missing data**, affecting reporting accuracy

The absence of consolidated insights makes it difficult for business teams to make **data-backed decisions** related to **menu strategy**, **pricing**, and **sales growth**.

## Table For Dataset Used

This project uses a relational pizza sales dataset consisting of **4 tables**, connected using SQL joins.

| Table Name        | Description                                                                 |
| ----------------- | --------------------------------------------------------------------------- |
| **orders**        | Stores each order with **order date** and **order time**                    |
| **order_details** | Captures each pizza item purchased per order with **quantity**              |
| **pizzas**        | Contains pizza variants by **size** and **price**                           |
| **pizza_types**   | Contains pizza master data like **category**, **name**, and **ingredients** |


## Key Results And Insights

1. **Category-level demand** analysis helps identify which pizza categories drive the highest **sales volume**.
2. **Pricing distribution** shows premium pizzas and helps understand how **size impacts pricing**.
3. **Total order value per order** can be calculated using **quantity and price**, supporting revenue analysis.
4. Some pizzas can be identified as **never ordered**, which indicates low demand and supports **menu optimisation** decisions.
5. Data Cleaning checks using **NULL handling**, **COALESCE**, and **DISTINCT** to improve data reliability for reporting.


## Next Steps

1. Expand the dataset to include **customer_identifier** and **store_identifier** to enable **customer segmentation** and outlet-level analysis
2. Add **discounts**, **delivery charges**, and **tax** fields to calculate true **net revenue** and profitability
3. Perform **monthly trend analysis** to identify peak seasons and demand shifts
4. Build a **Power BI dashboard** to visualise category sales, top pizzas, and peak ordering time
5. Add **cost of ingredients** to calculate **profit margin** by pizza type and size


If you want, I can also write the **GitHub repository description**, **project folder structure**, and a clean **README banner intro line** so it looks even more premium.
