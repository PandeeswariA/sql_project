create database dataset;
use dataset;
show tables;

set sql_safe_updates = 1;

-- 1. select the data who is making profit
select * from stored_data where profit > 0;
select Customer_Name from stored_data where profit > 0;

-- 2. select the data who is making profit with discount >= 0.5
select * from stored_data where profit > 0 and discount>=0.5;

-- 3. select unique customerID
select distinct customer_id from stored_data;

-- 4. Take the categories & subcategories in where this unique customerID present

select distinct Category, SubCategory from stored_data 
where Customer_ID in (select distinct Customer_ID from stored_data);

-- 5. select most profit making city
select City, round(SUM(Profit),2) as Total_Profit
from stored_data
group by City
order BY Total_Profit desc
limit 1;


-- 6. create a newtable duplicate TABLE
create table stored_data_copy as select * from stored_data;

-- 7. In new table delete the rows whos discount is < 0.3
delete from stored_data_copy WHERE Discount < 0.3;

-- 8. find what category is saled most
select Category, sum(Sales) as Total_Sales
from stored_data
group by Category
order by Total_Sales DESC
limit 1;

-- 9. find which shipmode made most profit  
select Ship_Mode, sum(Profit) as Total_Profit
from stored_data
group BY Ship_Mode
order BY Total_Profit desc
limit 1;

-- 10. GET which subcategories quantity is high
select SubCategory, sum(Quantity) as Total_Quantity
from stored_data
group by SubCategory
order by Total_Quantity desc
limit 1;

-- 11. select the rank of 21-31 most sales record
select Row_ID, Sales,
       rank() over (order by Sales desc) as Sales_Rank
from stored_data
limit 20, 10;

-- 12. create a new column combining category & subcategories ex category = 'Office Supplies' subcategories = 'Binders' newColumn = 'Office Supplies-Binders'

alter table stored_data add column CategoryAndSubCategory VARCHAR(50);

update stored_data set CategoryAndSubCategory = CONCAT(Category, '-', SubCategory);
select CategoryAndSubCategory  from stored_data;

-- 13. select the data shipped after 8/3/2015 and befor 1/10/2017
select * from stored_data
where Ship_Date > '2015-03-08' and Ship_Date < '2017-10-01';

-- 14. find the most used customerID
select Customer_ID, count(*) as Order_Count
from stored_data
group BY Customer_ID
order BY Order_Count desc
limit 1;

-- 15. create a new column having customer_name_lenght
alter table stored_data add column customer_name_length int;
update stored_data set customer_name_length=length(Customer_Name);

-- 16. how many unique orders created
select count(distinct Order_ID) as "Unique Orders" from stored_data;

-- 17. what orderID has the most sale
select Order_ID, sum(Sales) as Total_Sales
from store_data
group by Order_ID
order by Total_Sales desc
limit 1;

-- 18. rand the ordID based on the sales, grouped on city
select Order_ID, City, Total_Sales,
       rank() over (partition by City order by Total_Sales desc) as Sales_Rank
from (
    select Order_ID, City, SUM(Sales) as Total_Sales
    from stored_data
    group by Order_ID, City
) as City_Sales;

-- 19.  find the windowfunction-sum based on partion by date
select Order_Date, sum(Sales) over (partition by Order_Date) as Total_Sales
from stored_data;

-- 20. productID sales
select Product_ID, sum(Sales) as Total_Sales
from stored_data
group by Product_ID;
