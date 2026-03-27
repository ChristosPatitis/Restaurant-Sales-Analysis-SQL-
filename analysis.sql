-- Restaurant Sales Analysis

-- Top Selling Items
SELECT "Food Item", SUM(Quantity) AS total_orders
FROM restaurant_orders
GROUP BY "Food Item"
ORDER BY total_orders DESC;

-- Revenue by Category
SELECT Category, SUM(Price) AS total_revenue
FROM restaurant_orders
GROUP BY Category
ORDER BY total_revenue DESC;

-- Revenue by Day of Week
SELECT 
    CASE strftime('%w', DATE("Order Time"))
        WHEN '0' THEN 'Sunday'
        WHEN '1' THEN 'Monday'
        WHEN '2' THEN 'Tuesday'
        WHEN '3' THEN 'Wednesday'
        WHEN '4' THEN 'Thursday'
        WHEN '5' THEN 'Friday'
        WHEN '6' THEN 'Saturday'
    END AS day_name,
    SUM(Price) AS total_revenue
FROM restaurant_orders
GROUP BY day_name
ORDER BY total_revenue DESC;

-- Revenue by Week
SELECT strftime('%W', DATE("Order Time")) AS week_number,
       SUM(Price) AS total_revenue
FROM restaurant_orders
GROUP BY week_number
ORDER BY total_revenue DESC;

-- Peak Order Hours
SELECT strftime('%H', "Order Time") AS hour, COUNT(*) AS orders_count
FROM restaurant_orders
GROUP BY hour
ORDER BY orders_count DESC;

-- Least Profitable Items
SELECT "Food Item", SUM(Price) AS total_revenue
FROM restaurant_orders
GROUP BY "Food Item"
ORDER BY total_revenue ASC
LIMIT 10;

-- Holiday Analysis (Dec & Jan)
SELECT 
    CASE strftime('%w', DATE("Order Time"))
        WHEN '0' THEN 'Sunday'
        WHEN '1' THEN 'Monday'
        WHEN '2' THEN 'Tuesday'
        WHEN '3' THEN 'Wednesday'
        WHEN '4' THEN 'Thursday'
        WHEN '5' THEN 'Friday'
        WHEN '6' THEN 'Saturday'
    END AS day_name,
    SUM(Price) AS holiday_revenue
FROM restaurant_orders
WHERE strftime('%m', DATE("Order Time")) IN ('12', '01')
GROUP BY day_name
ORDER BY holiday_revenue DESC;
