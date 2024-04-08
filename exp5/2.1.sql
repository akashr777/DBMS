exp 2 PL SQL
--------------

2.1
----

1)

mysql> create procedure invoice1()begin select * from customer; select * from product; select * from invoice_item; select * from invoice_master;end//
Query OK, 0 rows affected (0.01 sec)

mysql> call invoice1();
    -> //
+-------+---------+------------+------+------------+
| id    | name    | address    | city | ph_no      |
+-------+---------+------------+------+------------+
| 10002 | sumesh  | def house  | ekm  | 9632589652 |
| 10005 | rajesh  | mno house  | wyn  | 9712346895 |
| 10006 | radhesh | xyz house  | tvm  | 9656666685 |
| 10007 | kalyani | cute house | ekm  | 9876543210 |
| 10008 | sitha   | baby house | ekm  | 9696363610 |
| 10009 | ayisha  | na house   | wyn  | 9301234567 |
+-------+---------+------------+------+------------+
6 rows in set (0.00 sec)

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

+--------+------+----------+
| inv_id | pid  | quantity |
+--------+------+----------+
|    103 | 5555 |        2 |
|    105 | 3333 |       12 |
|    106 | 4444 |        5 |
|    103 | 4444 |        5 |
+--------+------+----------+
4 rows in set (0.00 sec)

+--------+---------+------------+
| inv_id | cust_id | inv_date   |
+--------+---------+------------+
|    101 |   10001 | 2021-02-11 |
|    102 |   10002 | 2021-04-23 |
|    103 |   10003 | 2022-09-01 |
|    105 |   10005 | 2023-11-30 |
|    106 |   10003 | 2023-05-12 |
+--------+---------+------------+
5 rows in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)
//VERIFIED
