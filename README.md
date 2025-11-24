# FMCG_2022_2024_analysis

**About the Dataset**
This dataset simulates daily-level transactional data for Fast-Moving Consumer Goods (FMCG) between 2022 and 2024.

**Columns**
date – Date of transaction
sku – Unique product identifier (e.g., MI-006)
brand – Brand name
segment – Segment classification
category – Product category (e.g., Milk, Juice)
channel – Sales channel (Retail, Discount, Online)
region – Sales region
pack_type – Packaging type (Bottle, Carton, etc.)
price_unit – Unit price for the day
promotion_flag – 1 if a promotion was active, else 0
stock_availble - availability of stocks
delivery_days – Days taken to deliver
delivered_qty – Delivered quantity
units_sold – Units sold

Problem Statement:
01_Year-over-year sales comparison
02_Delivery performance
03_Monthly revenue trends
04_Region–category contribution(%)
05_Channel growth analysis


**Sample output**
05_Peak performing month(channel wise)

| Channel    | Year | Month | Total Revenue | Rank |
| ---------- | ---- | ----- | ------------- | ---- |
| Discount   | 2023 | 7     | 298401.57     | 1    |
| E-commerce | 2023 | 7     | 296081.11     | 1    |
| Retail     | 2023 | 7     | 297239.50     | 1    |

Insight: All channels — Retail, E-commerce, and Discount —
reached their maximum monthly revenue in July 2023,
indicating a strong seasonal peak across the FMCG market.



Source: Dataset sourced from Kaggle.
