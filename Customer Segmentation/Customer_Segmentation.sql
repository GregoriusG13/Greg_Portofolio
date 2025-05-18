WITH rfm_raw AS (
  SELECT
    CustomerID,
    MAX(InvoiceDate) AS last_order_date,
    COUNT(DISTINCT InvoiceNo) AS frequency,
    SUM(Quantity * UnitPrice) AS monetary
  FROM online_retail
  WHERE CustomerID IS NOT NULL
  GROUP BY CustomerID
),
today AS (
  SELECT MAX(InvoiceDate) AS today FROM online_retail
),
rfm AS (
  SELECT
    r.CustomerID,
    (t.today - r.last_order_date) AS recency,
    r.frequency,
    r.monetary
  FROM rfm_raw r
  CROSS JOIN today t
),
segmented AS (
  SELECT
    CustomerID,
    recency,
    frequency,
    monetary,
 	CASE
  		WHEN frequency = 0 OR monetary = 0 OR recency > INTERVAL '180 days' THEN 'Lost'
  		WHEN frequency >= 10 AND monetary >= 1000 THEN 'Loyal'
  		WHEN frequency <= 2 AND monetary <= 200 THEN 'New'
  		ELSE 'Regular'
	END AS segment
  FROM rfm
)
SELECT * FROM segmented;