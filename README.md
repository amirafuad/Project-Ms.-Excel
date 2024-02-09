

# ***WALMART SALES ANALYSIS USING MYSQL***

-by Amira-

# About
	This project is to show and analyze Walmart Sales Data with the purpose of gaining information on various branches and product. The focus includes examining the sales trends of different products and understanding customer behaviour. And to explore oppurtunities for optimizing sales strategies. The dataset utilized is sourced from the Kaggle Walmart Sales Forecasting Competition.
	In this recruiting competition, job-seekers are provided with historical sales data for 45 Walmart stores located in different regions. Each store contains many departments, and participants must project the sales for each department in each store. To add to the challenge, selected holiday markdown events are included in the dataset. These markdowns are known to affect sales, but it is challenging to predict which departments are affected and the extent of the impact.

Purpose Of The Project
	The major aim of the project is to gain insight into the sales data of Walmart to understand the different factors that affect sales of the different branches.
About Data
The dataset was obtained from the Kaggle Walmart Sales Forecasting Competition. This dataset contains sales transactions from a three branches of Walmart, respectively located in Mandalay, Yangon and Naypyitaw. The data contains 17 columns and 1000 rows.



|COLUMN|	DESCRIPTION|	DATA TYPE|
|------|-------------|-----------|
|Invoice_id| 	Invoice of the sales made|	VARCHAR(30)|
|Branch|	Branch at which sales were made|	VARCHAR(5)|
|City|	The location of the branch|	VARCHAR(30)|
|Customer_type|	The type of the customer|	VARCHAR(30)|
|Gender|	Gender of the customer making purchase|	VARCHAR(10)|
|Product_line|	Product line of the product solf|	VARCHAR (100)|
|Unit_price|	The price of each product|	DECIMAL)10,2)|
|Quantity|	The amount of the product sold|	INT|
|VAT|	The amount of tax on the purchase|	FLOAT(6,4)|
|Total|	The total cost of the purchase|	DECIMAL (10,2)|
|Date|	The date on which the purchase was made|	DATE|
|Time|	The time on which the purchase was made|	TIMESTAMP|
|Payment_method|	The total amount paid|	DECIMAL (10,2)|
|cogs|	Cost of Goods sold|	DECIMAL(10,2)|
|Gross_margin_percentage|	Gross margin percentage|	FLOAT(11,9)|
|Gross_income|	Gross Income|	DECIMAL(10,2)|
|Rating|	Rating|	FLOAT(2,1)|


# **Analysis List**

1.	Product Analysis
Conduct analysis on the data to understand the different product lines, the product
 lines performing best and the product lines that need to be improved.
2.	Sales Analysis
This analysis aims to answer the question of the sales trends of product. The result of 
this can help measure the effectiveness of each sales strategy the business applies and 
what must do to gain more sales.
3.	Customer Analysis
This analysis aims to uncover the different customers segment, purchase trends and 
the profitability of each customer segment.



# **Business Question to answer**

 # Generic Question 
1.	How many unique cities does the data have?
2.	In which city is each branch?
3.	
# Product
1.	How many unique product lines does the data have?
2.	What is the most common payment method?
3.	What is the most selling product line?
4.	What is the total revenue by month?
5.	What month had the largest COGS?
6.	What product line had the largest revenue?
7.	What is the city with the largest revenue?
8.	What product line had the largest VAT?
9.	Which branch sold more products than average product sold?
10.	What is the most common product line by gender?
11.	What is the average rating of each product line?

# Sales
1.	Number of sales made in each time of the day per weekday
2.	Which of the customer types brings the most revenue
3.	Which city has the largest tax percent/VAT?
4.	Which customer type pays the most in VAT?

# Customer
1.	How many unique customer types does the data have?
2.	How many unique payment methods does the data have?
3.	What is the most common customer type?
4.	Which customer type buys the most?
5.	What is the gender of most of the customers?
6.	What is the gender distribution per branch?
7.	Which time of the day do customers give most ratings?
8.	Which time of the day do customers give most ratings per branch?
9.	Which day of the week has the best average ratings?
10.	Which day of the week has the best average ratings per branch?




