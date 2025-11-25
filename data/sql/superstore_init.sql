CREATE TABLE superstore_sales
(
    Category varchar(100) not null,
    City varchar(100),
    Country varchar(100) not null,
    Customer_ID varchar(100),
    Customer_Name varchar(200),
    Discount numeric,
    Market varchar(10),
    skipped numeric,
    Order_Date timestamp without time zone,
    Order_ID varchar(100),
    Order_Priority varchar(100),
    Product_ID varchar(100),
    Product_Name varchar(400),
    Profit numeric,
    Quantity numeric,
    Region varchar(100),
    Row_ID numeric primary key not null,
    Sales numeric,
    Segment varchar(100),
    Ship_Date timestamp without time zone,
    Ship_Mode varchar(100),
    Shipping_Cost numeric,
    State varchar(100),
    Sub_Category varchar(100),
    Year numeric,
    Market2 varchar(100),
    weeknum numeric
);


-- Import data from the CSV file
COPY superstore_sales FROM '/tmp/superstore_data.csv' DELIMITER ',' CSV HEADER QUOTE '"' NULL '';