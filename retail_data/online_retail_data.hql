
create database if not exists online_retail;
use online_retail;
create external table if not exists online_retail_data (
  record_id int,
  invoice int,
  stockcode string,
  description string,
  quantity int,
  invoicedate string,
  price int,
  customer_id int,
  country string
)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile location 'hdfs://namenode:8020/user/hive/warehouse/online_retail.db/online_retail_data';
