use walmart;

select * from walmart_sales;

-- in order to add new or remove columns set sql safe updates to 0
set sql_safe_updates = 0;

-- create a new column
ALTER table walmart_sales
add column time_of_day VARCHAR(20);

-- insert data in our new column
update walmart_sales
set time_of_day = (
case 
when time between '00:00:00' and '12:00:00' then 'Morning'
when time between '12:01:00' and '16:00:00' then 'Afternoon'
else 'Evening'
end);

-- insert a month column
select date,
       monthname(date)
from walmart_sales;
-- ---- ----------- ------------ ---------- ------
alter table walmart_sales
add column month VARCHAR(10);

update walmart_sales
set month = monthname(date);

-- - ------------------- ---------   ------- ---
-- INSERT A DAY NAME COLUMN IN OUR TABLE
 select date,
       dayname(date)
from walmart_sales;

alter table walmart_sales
add column day VARCHAR(10);

update walmart_sales
set day = dayname(date);


