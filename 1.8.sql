1.8
----


mysql> select * from customer;
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

mysql> select * from invoice_master;
+--------+---------+------------+
| inv_id | cust_id | inv_date   |
+--------+---------+------------+
|    101 |   10001 | 2021-02-11 |
|    102 |   10002 | 2021-04-23 |
|    103 |   10003 | 2022-09-01 |
|    105 |   10005 | 2023-11-30 |
|    106 |   10003 | 2023-05-12 |
+--------+---------+------------+
5 rows in set (0.01 sec)

mysql> create view purchase as select name from customer where id in(select cust_id from invoice_master);
Query OK, 0 rows affected (0.02 sec)

mysql> select * from purchase;
+--------+
| name   |
+--------+
| sumesh |
| rajesh |
+--------+
2 rows in set (0.00 sec)

//VERIFIED
