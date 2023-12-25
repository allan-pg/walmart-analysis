create database if NOT EXISTS walmart;

use walmart;

create table if not exists walmart_sales(
		invoice_id VARCHAR(30) not null primary key,
        branch VARCHAR(5) not null,
        city VARCHAR(30) not null,
        customer_type varchar(30) not null,
        gender VARCHAR(20) not null,
        product_line varchar(100) not null,
        unit_price decimal(10, 5) not null,
        quantity int not null,
        vat float(6, 4) not null,
        total decimal(12, 4) not null,
        date DATETIME not null,
        time TIME not null,
        payment_method VARCHAR(20) not null,
        cogs decimal(10, 2) not null,
        gross_margin_perc float(11, 5),
        gross_income decimal(12, 4) not null,
        rating float(2, 1)
	);
    
    describe walmart_sales;
    
    select * from walmart_sales;