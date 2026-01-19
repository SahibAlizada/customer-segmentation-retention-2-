DROP TABLE IF EXISTS rfm_customers;
CREATE TABLE rfm_customers (
    customer_id TEXT,
    recency TEXT,
    frequency TEXT,
    monetary TEXT,
    r_score TEXT,
    f_score TEXT,
    m_score TEXT,
    rfm_score TEXT,
    segment TEXT
);

SELECT COUNT(*) FROM rfm_customers;

SELECT segment, COUNT(*) 
FROM rfm_customers
GROUP BY segment
ORDER BY COUNT(*) DESC;

SELECT segment, AVG(monetary :: numeric) AS avg_spend
FROM rfm_customers
GROUP BY segment
ORDER BY avg_spend DESC;

SELECT segment, SUM(monetary::numeric) AS total_revenue
FROM rfm_customers
GROUP BY segment
ORDER BY total_revenue DESC;

