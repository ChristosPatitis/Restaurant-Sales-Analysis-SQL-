# Restaurant Sales Analysis (SQL)

## Overview
SQL business analysis of restaurant order data to identify revenue drivers, peak ordering times, low-performing menu items, and seasonal sales patterns.

This project connects directly to my hospitality background and focuses on turning raw restaurant sales data into practical business insights for menu planning, staffing, and promotion strategy.

## Business Questions
- Which food items are ordered most often?
- Which categories generate the most revenue?
- Which days and weeks perform best?
- What are the busiest hours of the day?
- Which items contribute the least revenue?
- How do holidays affect sales?

## Dataset
The dataset includes restaurant order information such as:

- Order ID
- Customer name
- Food item
- Category
- Quantity
- Price
- Payment method
- Order time

## Tools Used
- SQL
- SQLite
- DBeaver
- Git & GitHub

## Analysis Performed
Using SQL, I analyzed:

- Revenue by food category
- Best-selling and lowest-performing items
- Daily and weekly sales trends
- Peak ordering hours
- Holiday sales patterns
- Payment method distribution

## Key Insights
- Friday and Saturday generated the highest revenue, suggesting stronger weekend demand.
- Lunch hours between 12:00–14:00 and dinner hours between 18:00–20:00 were the busiest ordering periods.
- Main dishes contributed the majority of total revenue.
- Salads and desserts generated lower revenue, showing potential areas for menu improvement or targeted promotions.
- December and January showed increased sales activity, likely connected to holiday demand.

## Business Recommendations
- Increase staff coverage during lunch, dinner, Fridays, and Saturdays.
- Promote lower-performing categories such as salads and desserts through bundles or limited-time offers.
- Prioritize inventory planning for main dishes because they drive most revenue.
- Use holiday periods for special menus or promotional campaigns.

## How to Run
1. Open `restaurant_db.sqlite` in DBeaver or another SQLite tool.
2. Open `analysis.sql`.
3. Run the queries step by step.

## Author
Christos Patitis
