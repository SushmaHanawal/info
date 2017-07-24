
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

