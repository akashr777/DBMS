1.7 

-------

1)


mysql> select * from invoice_item;
+--------+------+----------+
| inv_id | pid  | quantity |
+--------+------+----------+
|    103 | 5555 |        2 |
|    105 | 3333 |       12 |
|    106 | 4444 |        5 |
|    103 | 4444 |        5 |
+--------+------+----------+
4 rows in set (0.00 sec)

mysql> select * from product;
+------+--------+-------+
| pid  | pname  | price |
+------+--------+-------+
| 1111 | pencil |    51 |
| 2222 | pen    |    71 |
| 3333 | book   |   224 |
| 4444 | soap   |   153 |
| 5555 | Bucket |    31 |
+------+--------+-------+
5 rows in set (0.00 sec)


mysql> select pname,quantity from product inner join invoice_item on product.pid=invoice_item.pid;
+--------+----------+
| pname  | quantity |
+--------+----------+
| Bucket |        2 |
| book   |       12 |
| soap   |        5 |
| soap   |        5 |
+--------+----------+
4 rows in set (0.00 sec)


2)


mysql> select * from customer inner join invoice_master on customer.id=invoice_master.cust_id inner join invoice_item on invoice_master.inv_id=invoice_item.inv_id inner join product on invoice_item.pid=product.pid where inv_date=20231130;
+-------+--------+-----------+------+------------+--------+---------+------------+--------+------+----------+------+-------+-------+
| id    | name   | address   | city | ph_no      | inv_id | cust_id | inv_date   | inv_id | pid  | quantity | pid  | pname | price |
+-------+--------+-----------+------+------------+--------+---------+------------+--------+------+----------+------+-------+-------+
| 10005 | rajesh | mno house | wyn  | 9712346895 |    105 |   10005 | 2023-11-30 |    105 | 3333 |       12 | 3333 | book  |   224 |
+-------+--------+-----------+------+------------+--------+---------+------------+--------+------+----------+------+-------+-------+
1 row in set (0.00 sec)
