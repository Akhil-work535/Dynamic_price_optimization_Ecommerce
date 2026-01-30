
CREATE TABLE retail_store (
    `Date` DATE,
    `Store ID` TEXT,
    `Product ID` TEXT,
    `Category` VARCHAR(50),
    `Region` VARCHAR(50),
    `Inventory Level` INT,
    `Units Sold` INT,
    `Units Ordered` INT,
    `Demand Forecast` INT,
    `Price` DECIMAL(10,2),
    `Discount` DECIMAL(5,2),
    `Weather Condition` VARCHAR(30),
    `Holiday/Promotion` VARCHAR(30),
    `Competitor Pricing` DECIMAL(10,2),
    `Seasonality` VARCHAR(20)
);




load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/retail_store_inventory.csv'
into table retail_store
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

select *
from retail_store;


SELECT
  COUNT(*) AS total_rows,
  COUNT(DISTINCT `Product ID`) AS products,
  COUNT(DISTINCT `Store ID`) AS stores
FROM retail_store;


SELECT
  ROUND(
    SUM(
      `Units Sold`
      * Price
      * (1 - Discount / 100)
    ),
    2
  ) AS total_revenue
FROM retail_store;

SELECT
  Category,
  ROUND(AVG(Price), 2) AS avg_price,
  ROUND(AVG(`Units Sold`), 2) AS avg_units_sold
FROM retail_store
GROUP BY Category
ORDER BY avg_units_sold DESC;


SELECT
  CASE
    WHEN Discount = 0 THEN 'No Discount'
    WHEN Discount < 0.2 THEN 'Low Discount'
    ELSE 'High Discount'
  END AS discount_band,
  ROUND(AVG(`Units Sold`), 2) AS avg_units_sold,
  ROUND(AVG(Price), 2) AS avg_price
FROM retail_store
GROUP BY discount_band;

SELECT
  Category,
  ROUND(AVG(Price), 2) AS our_avg_price,
  ROUND(AVG(`Competitor Pricing`), 2) AS competitor_avg_price,
  ROUND(AVG(Price - `Competitor Pricing`), 2) AS price_gap
FROM retail_store
GROUP BY Category
ORDER BY price_gap DESC;


SELECT
  Category,
  ROUND(AVG(`Demand Forecast`), 2) AS avg_demand,
  ROUND(AVG(`Inventory Level`), 2) AS avg_inventory
FROM retail_store
GROUP BY Category;



