    /*ACCESSING DATABASE(SUBQUERY)*/
     
//1)List customer names of invoice date 03/02/2018

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

mysql> select * from invoice_master;
+--------+---------+------------+
| inv_id | cust_id | inv_date   |
+--------+---------+------------+
|    105 |   10005 | 2018-02-03 |
|    106 |   10003 | 2023-05-12 |
|    107 |   10008 | 2021-01-29 |
|    108 |   10009 | 2021-12-24 |
+--------+---------+------------+
4 rows in set (0.00 sec)

mysql> select name from customer where id in(select cust_id from invoice_master where inv_date=20180203);
+--------+
| name   |
+--------+
| rajesh |
+--------+
1 row in set (0.00 sec)

//2)List product name and price of each item

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

mysql> select * from invoice_item;
+--------+------+----------+
| inv_id | pid  | quantity |
+--------+------+----------+
|    104 | 6666 |       20 |
|    105 | 7777 |       22 |
|    106 | 8888 |       32 |
|    107 | 7777 |       34 |
+--------+------+----------+
4 rows in set (0.00 sec)

mysql> select pname,price from product where pid in(select pid from invoice_item);
+-------+-------+
| pname | price |
+-------+-------+
| fog   |    61 |
+-------+-------+
1 row in set (0.00 sec)


