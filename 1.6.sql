
//1)pname,priice except soap

mysql> select * from product;
+------+--------+-------+
| pid  | pname  | price |
+------+--------+-------+
| 1111 | pencil |    51 |
| 2222 | pen    |    71 |
| 3333 | book   |   224 |
| 4444 | soap   |   153 |
| 5555 | Bucket |    31 |
| 6666 | fog    |    61 |
+------+--------+-------+
6 rows in set (0.00 sec)
mysql> select pname,price from product where pname!="soap" order by price;
+--------+-------+
| pname  | price |
+--------+-------+
| Bucket |    31 |
| pencil |    51 |
| fog    |    61 |
| pen    |    71 |
| book   |   224 |
+--------+-------+
5 rows in set (0.00 sec)

//2)min,max and avg of price

mysql> select min(price),max(price),avg(price) from product;
+------------+------------+------------+
| min(price) | max(price) | avg(price) |
+------------+------------+------------+
|         31 |        224 |    98.5000 |
+------------+------------+------------+
1 row in set (0.00 sec)

//3)Count number of customers in each city

mysql> select * from customer;
+-------+--------+------------+-----------+------------+
| id    | name   | address    | city      | ph_no      |
+-------+--------+------------+-----------+------------+
| 10002 | sumesh | def house  | ekm       | 9632589652 |
| 10003 | ramesh | THEKKEDATH | KOZHIKODE | 9381126781 |
| 10004 | mukesh | jkl house  | pkd       | 9632221456 |
| 10005 | rajesh | mno house  | wyn       | 9712346895 |
| 10006 | akash  | zoo house  | tvm       | 8086646352 |
+-------+--------+------------+-----------+------------+
5 rows in set (0.00 sec)

mysql> select city,count(*) from customer group by city;
+-----------+----------+
| city      | count(*) |
+-----------+----------+
| ekm       |        1 |
| KOZHIKODE |        1 |
| pkd       |        1 |
| wyn       |        1 |
| tvm       |        1 |
+-----------+----------+
5 rows in set (0.00 sec)

//4)Number of customer in each city more han 3 customer

mysql> select count(*),city from customer group by city having count(city)>3;
+----------+------+
| count(*) | city |
+----------+------+
|        4 | tvm  |
+----------+------+
1 row in set (0.01 sec)


