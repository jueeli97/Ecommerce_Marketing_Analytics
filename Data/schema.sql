
-- E-commerce & Marketing Analytics Schema (Synthetic, ~50K orders)
-- Compatible with Postgres/MySQL (adjust BOOLEAN types if needed)

CREATE TABLE dim_date (
  date_key INT PRIMARY KEY,
  date DATE NOT NULL,
  day_name VARCHAR(10),
  week INT, month INT, quarter INT, year INT,
  is_weekend BOOLEAN
);

CREATE TABLE dim_customer (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50), last_name VARCHAR(50),
  email VARCHAR(120), phone VARCHAR(30),
  city VARCHAR(60), state VARCHAR(60), country VARCHAR(60),
  signup_date DATE,
  channel_acquired VARCHAR(40),
  age_band VARCHAR(20), gender VARCHAR(10)
);

CREATE TABLE dim_product (
  product_id INT PRIMARY KEY,
  sku VARCHAR(40) UNIQUE,
  product_name VARCHAR(120),
  category VARCHAR(60), subcategory VARCHAR(60), brand VARCHAR(60),
  unit_price DECIMAL(10,2), cost_price DECIMAL(10,2)
);

CREATE TABLE dim_channel (
  channel_id INT PRIMARY KEY,
  channel_name VARCHAR(40) UNIQUE
);

CREATE TABLE dim_campaign (
  campaign_id INT PRIMARY KEY,
  campaign_name VARCHAR(120),
  channel_id INT,
  start_date DATE, end_date DATE,
  target_segment VARCHAR(60)
);

CREATE TABLE fact_orders (
  order_id BIGINT PRIMARY KEY,
  order_date_key INT,
  customer_id INT,
  order_status VARCHAR(20),
  order_revenue DECIMAL(12,2),
  order_cost DECIMAL(12,2),
  discount_amount DECIMAL(12,2),
  shipping_fee DECIMAL(10,2)
);

CREATE TABLE fact_order_items (
  order_item_id BIGINT PRIMARY KEY,
  order_id BIGINT,
  product_id INT,
  quantity INT,
  unit_price DECIMAL(10,2),
  line_revenue DECIMAL(12,2),
  line_cost DECIMAL(12,2)
);

CREATE TABLE fact_marketing_spend (
  spend_id BIGINT PRIMARY KEY,
  date_key INT,
  campaign_id INT,
  channel_id INT,
  impressions BIGINT, clicks BIGINT,
  spend DECIMAL(12,2)
);

CREATE TABLE fact_web_events (
  event_id BIGINT PRIMARY KEY,
  session_id VARCHAR(64),
  customer_id INT NULL,
  date_key INT,
  channel_id INT,
  campaign_id INT NULL,
  page VARCHAR(80),
  event_type VARCHAR(20),
  device VARCHAR(30),
  region VARCHAR(60)
);

-- Suggested Indexes
CREATE INDEX idx_orders_date ON fact_orders(order_date_key);
CREATE INDEX idx_items_prod ON fact_order_items(product_id);
CREATE INDEX idx_spend_campaign_date ON fact_marketing_spend(campaign_id, date_key);
CREATE INDEX idx_web_events_session ON fact_web_events(session_id);
