
-- Q1: Find total sales for each product
select s.product_id, p.PRODUCT_NAME, sum(s.quantity*s.price) as sale from sales s inner join products p on p.`PRODUCT_ID`= s.`PRODUCT_ID`  group by s.product_id order by sale desc;


-- or

select p.PRODUCT_NAME, sale
FROM (
  select PRODUCT_ID, sum(quantity * price) as sale
  from SALES
  GROUP BY PRODUCT_ID
) result
INNER JOIN PRODUCTS p ON p.PRODUCT_ID = result.PRODUCT_ID
order by sale desc;

-- Q2: Find the product which does not have a sales at all
select product_name from products where product_id not in (select distinct product_id from sales);

-- or

SELECT PRODUCT_NAME, PRODUCT_ID
FROM PRODUCTS p1
where not exists (
  select PRODUCT_ID from SALES where PRODUCT_ID = p1.PRODUCT_ID
);

-- or
-- using left join
SELECT p.PRODUCT_NAME, p.PRODUCT_ID # using left join
FROM PRODUCTS p
LEFT JOIN SALES s on p.PRODUCT_ID = s.PRODUCT_ID
where s.PRODUCT_ID is NULL;

-- Q3: Write a SQL query to find the products whose sales decreased in 2012 compared to 2011?

select p.product_name from products p, sales 2011_sales, sales 2012_sales 
where 2011_sales.year= 2011 and 2012_sales.year = 2012 and 
(2012_sales.quantity * 2012_sales.price) < (2011_sales.quantity * 2011_sales.price)
and p.`PRODUCT_ID` = 2011_sales.`PRODUCT_ID`
and p.`PRODUCT_ID` = 2012_sales.`PRODUCT_ID`;


-- Q4: Write a query to select the top product sold in each year

select * from sales;

select p.`PRODUCT_NAME` , A.year, A.quantity from (select year, max(quantity) as quantity from sales group by year) A 
inner join sales s on (s.year = A.year and s.`QUANTITY` = A.`QUANTITY`)
inner join products p ON p.`PRODUCT_ID` = s.product_id
order by year asc;

-- Q5: Write a query to find the average quantity of product sold so far

select p.product_name, avg.average as average_quantity 	from (select product_id, sum(quantity)/count(quantity) as average from sales group by product_id) avg inner join products p on p.`PRODUCT_ID` = avg.`PRODUCT_ID`;

-- Q6: Write a query to find the products whose sold more than 10 quantities in a given year
select product_name from products where product_id in (select product_id from sales where quantity  > 10);

-- or
select p.product_name, s.quantity, s.year from products p inner join sales s 
on p.product_id = s.product_id where s.quantity > 10;



-- Q7: Write a query to find the products whose quantity sold in a year is greater than the average quantity of the product sold across all the years


select p.product_name, s.year, s.quantity from products  p inner join
 sales s on p.product_id = s.product_id inner join 
(select product_id, sum(quantity)/count(quantity) as avg_qty from sales group by product_id) avg_sales
on s.product_id = avg_sales.`PRODUCT_ID`
where s.quantity > avg_sales.avg_qty;

-- or

SELECT p.PRODUCT_NAME, s.YEAR, s.QUANTITY
FROM PRODUCTS p
INNER JOIN SALES s ON p.PRODUCT_ID = s.PRODUCT_ID
WHERE s.QUANTITY > (
  SELECT sum(QUANTITY)/count(QUANTITY)
  FROM SALES s2
  WHERE s2.PRODUCT_ID = s.PRODUCT_ID
);

-- Q8: Write a query to compare the products sales of "IPhone" and "Samsung" in each year


select ss.year, si.quantity as iphone_quantity, ss.quantity as samsung_quantity, si.price as iphone_price, ss.price as samsung_price
from sales si, sales ss, products pi,  products ps
where si.product_id = pi.product_id and ss.product_id = ps.product_id and pi.product_name='IPhone' and
ps.product_name='Samsung' and ss.year= si.year; 

-- Q9: Write a query to find the number of products sold in each year
select year, count(product_id) from sales group by year

-- or

SELECT year, count(QUANTITY)
from SALES
GROUP BY year;
