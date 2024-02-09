# Create a Table
CREATE TABLE IF NOT EXISTS sales(
	invoice_id VARCHAR (30) NOT NULL PRIMARY KEY,
    branch VARCHAR (5) NOT NULL,
    city VARCHAR (30) NOT NULL,
    customer_type VARCHAR (30) NOT NULL,
    gender VARCHAR (10) NOT NULL,
    product_line VARCHAR (100) NOT NULL,
    unit_price DECIMAL (10,2) NOT NULL,
    quantity INT NOT NULL,
    VAT FLOAT (6, 4) NOT NULL,
    total DECIMAL (12, 4) NOT NULL,
    date DATETIME NOT NULL,
    time TIME NOT NULL,
    payment_method VARCHAR (15) NOT NULL,
    cogs DECIMAL (10, 2) NOT NULL,
    gross_margin_pct FLOAT (11, 9),
    gross_income DECIMAL (12, 4) NOT NULL,
    rating FLOAT (2, 1)
    );
----------------------------------------------
# Data Cleaning
SELECT * from sales;
----------------------------------------------
# Add table time_of_day
ALTER TABLE sales ADD COLUMN time_of_day varchar(20);
# and then insert the data
update sales
SET time_of_day = (
	CASE
		WHEN 'time' between "00:00:00" AND "12:00:00" THEN "Morning"
		WHEN 'time' between "12:01:00" AND "16:00:00" THEN "Afternoon"
        ELSE "EVENING"
END

);
--------------------------------------------------
# add table day_name
ALTER TABLE sales ADD COLUMN day_name VARCHAR(10);
# and then insert the data
update sales SET day_name= dayname(date);
-------------------------------------------------
# add table month_name
alter table sales add column month_name VARCHAR(10);
# and then insert the data
UPDATE sales SET month_name= monthname(date);
----------------------------------------------------
# **BUSINESS ANSWER WITH SQL**

-------------------------# *GENERIC QUESTION*----------------------------
# 1. How many unique cities does the data have?
select distinct city from sales;
- the data have 3 unique cities that is Yangon , Naypyitaw, and Mandalay,
-----------
# 2. In which city is each branch?
select distinct city,branch from sales; 
- the data have 3 each brand that is Branch A for Yangon City, Branch B for Mandalay City, and Branch C for Naypyitaw City.
------------
------------------------------# *PRODUCT*-------------------------------
# 1. How many unique product lines does the data have?
select count(distinct product_line) from sales;
- the data have 6 unique product line
-------------
# 2. What is the most common payment method?
select payment_method, count(payment_method) as cnt from sales group by payment_method;
- the most common payment method is CASH.
-------------
# 3. What is the most selling product line?
select product_line ,count(product_line) as cnt from sales group by product_line order by cnt desc;
-the most selling product line is FASHION ACCESSORIES
-------------
# 4. What is the total revenue by month?
select month_name AS month, SUM(total) AS total_revenue from sales GROUP BY month_name;
- the total revenue for January is 116291.8680 , February is 95727.3765 , and March is 108867.1500
-------------
# 5. What month had the largest COGS?
select month_name AS month, SUM(cogs) AS total_cogs from sales group by month_name order by total_cogs desc;
- January is the largest COGS
-------------
# 6. What product line had the largest revenue?
select product_line ,SUM(total)as total_revenue from sales group by product_line order by total_revenue desc;
- Food and beverages has the largest revenue
-------------
# 7. What is the city with the largest revenue?
select city ,SUM(total)as total_revenue from sales group by city order by total_revenue desc;
- Naypyitaw has the largest revenue
-------------
# 8. What product line had the largest VAT?
select product_line ,SUM(VAT)as VAT from sales group by product_line order by vat desc;
-Food and beverages has the largest VAT
-------------
# 9. Which branch sold more product than average product sold?
select branch, SUM(quantity) as quantity from sales group by branch having sum(quantity) > (select avg(quantity) from sales) order by quantity desc;
-Branch A has sold more product
-------------
# 10. What is the most common product line by gender?
select gender, product_line, count(gender)as gender from sales group by gender, product_line order by gender desc;
- Fashion accessories for Female has the most common product line
-------------
# 11. What is the average rating of each product line?
select product_line, round(AVG(rating),2) as average_rating from sales group by product_line;
- Food and beverages has 7.11 average rating, Health and beauty has 6.98 average rating, Sport and travel has 6.86 average rating, Fashion accessories has 7.03 average rating, Home and lifestyle has 6.84 , and Electronic accessories has 6.91 average rating.
-------------

----------------------------# *SALES*-----------------------------------

# 1. Number of sales made in each time of the day per weekday?
select time_of_day, count(*) as total_sales from sales where day_name="sunday" group by time_of_day order by total_sales desc;
-in the evening have most sales , the store almost full in the evening--
-------------------------------
# 2. Which of the customer types brings the most revenue?
select customer_type, count(total) as total_revenue from sales group by customer_type order by total_revenue desc;
- Customer type that have most revenue is Member, but with Normal type is not big different
--------------------------------
# 3. Which city has the largest tax percent/VAT?
select city, ROUND((VAT),2) as largest_vat from sales group by city order by largest_vat desc;
- city that have largest average VAT is Naypyitaw
--------------------------------
# 4. Which customer type pays the most in VAT?
select customer_type, AVG(VAT) as most_vat from sales group by customer_type order by most_vat desc;
- customer type that pays the most in VAT is Member.


