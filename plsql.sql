//functions

CREATE A FUNCTION TO CALCULATE PRICE_RANGE(LOW, MEDIUM, HIGH) OF EACH PRODUCT.
IF PRICE<=5 INDICATE AS LOW, UPTO 50 INDICATE AS MEDIUM, AND ABOVE AS HIGH.


 DELIMITER //
mysql> CREATE FUNCTION PRICEIND(PRICE INT) RETURNS VARCHAR(20)
    -> DETERMINISTIC
    -> BEGIN
    -> DECLARE PRICE_IND VARCHAR(20);
    -> IF PRICE<=35 THEN SET PRICE_IND='LOW';
    -> ELSEIF(PRICE>35 AND PRICE<=200) THEN SET PRICE_IND='MEDIUM';
    -> ELSEIF PRICE>200 THEN SET PRICE_IND='HIGH';
    -> END IF;
    -> RETURN(PRICE_IND);
    -> END
    -> //
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT pid,pname,price,PRICEIND(price) FROM product; //
+------+----------+-------+-----------------+
| pid  | pname    | price | PRICEIND(price) |
+------+----------+-------+-----------------+
| 1111 | pencil   |    51 | MEDIUM          |
| 2222 | pen      |    71 | MEDIUM          |
| 3333 | book     |   224 | HIGH            |
| 4444 | soap     |   153 | MEDIUM          |
| 5555 | Bucket   |    31 | LOW             |
| 6666 | fog      |    61 | MEDIUM          |
| 7777 | computer | 10000 | HIGH            |
| 8888 | watch    |   100 | MEDIUM          |
+------+----------+-------+-----------------+
8 rows in set (0.00 sec)

//plsql trigger

mysql> create temporary table cust select * from customer;
    -> //
Query OK, 8 rows affected (0.00 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> select * from cust;
    -> //
+-------+--------+--------------+-----------+------------+
| id    | name   | address      | city      | ph_no      |
+-------+--------+--------------+-----------+------------+
| 10002 | sumesh | def house    | ekm       | 9632589652 |
| 10003 | ramesh | THEKKEDATH   | KOZHIKODE | 9381126781 |
| 10004 | mukesh | jkl house    | pkd       | 9632221456 |
| 10005 | rajesh | mno house    | wyn       | 9712346895 |
| 10006 | akash  | zoo house    | tvm       | 8086646352 |
| 10007 | remya  | golden villa | tvm       | 7034579261 |
| 10008 | resmi  | ftp villa    | tvm       | 7034562261 |
| 10009 | amala  | udp villa    | tvm       | 7034562111 |
+-------+--------+--------------+-----------+------------+
8 rows in set (0.00 sec)

mysql> CREATE TRIGGER CUST_TRIG AFTER UPDATE ON customer FOR EACH ROW
BEGIN INSERT INTO cust SET id=NEW.id, name=NEW.name,address=NEW.address,
Query OK, 0 rows affected (0.01 sec)


mysql> UPDATE customer SET city="idukki" WHERE id=10007;
    -> //
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
    -> //
+-------+--------+--------------+-----------+------------+
| id    | name   | address      | city      | ph_no      |
+-------+--------+--------------+-----------+------------+
| 10002 | sumesh | def house    | ekm       | 9632589652 |
| 10003 | ramesh | THEKKEDATH   | KOZHIKODE | 9381126781 |
| 10004 | mukesh | jkl house    | pkd       | 9632221456 |
| 10005 | rajesh | mno house    | wyn       | 9712346895 |
| 10006 | akash  | zoo house    | tvm       | 8086646352 |
| 10007 | remya  | golden villa | idukki    | 7034579261 |
| 10008 | resmi  | ftp villa    | tvm       | 7034562261 |
| 10009 | amala  | udp villa    | tvm       | 7034562111 |
+-------+--------+--------------+-----------+------------+
8 rows in set (0.00 sec)

mysql> select * from cust;
    -> //
+-------+--------+--------------+-----------+------------+
| id    | name   | address      | city      | ph_no      |
+-------+--------+--------------+-----------+------------+
| 10002 | sumesh | def house    | ekm       | 9632589652 |
| 10003 | ramesh | THEKKEDATH   | KOZHIKODE | 9381126781 |
| 10004 | mukesh | jkl house    | pkd       | 9632221456 |
| 10005 | rajesh | mno house    | wyn       | 9712346895 |
| 10006 | akash  | zoo house    | tvm       | 8086646352 |
| 10007 | remya  | golden villa | tvm       | 7034579261 |
| 10008 | resmi  | ftp villa    | tvm       | 7034562261 |
| 10009 | amala  | udp villa    | tvm       | 7034562111 |
| 10007 | remya  | golden villa | idukki    | 7034579261 |
+-------+--------+--------------+-----------+------------+
9 rows in set (0.00 sec)

mysql> UPDATE customer SET ph_no=98567347 WHERE id=10005;
    -> //
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from cust;
    -> //
+-------+--------+--------------+-----------+------------+
| id    | name   | address      | city      | ph_no      |
+-------+--------+--------------+-----------+------------+
| 10002 | sumesh | def house    | ekm       | 9632589652 |
| 10003 | ramesh | THEKKEDATH   | KOZHIKODE | 9381126781 |
| 10004 | mukesh | jkl house    | pkd       | 9632221456 |
| 10005 | rajesh | mno house    | wyn       | 9712346895 |
| 10006 | akash  | zoo house    | tvm       | 8086646352 |
| 10007 | remya  | golden villa | tvm       | 7034579261 |
| 10008 | resmi  | ftp villa    | tvm       | 7034562261 |
| 10009 | amala  | udp villa    | tvm       | 7034562111 |
| 10007 | remya  | golden villa | idukki    | 7034579261 |
| 10005 | rajesh | mno house    | wyn       |   98567347 |
+-------+--------+--------------+-----------+------------+
10 rows in set (0.00 sec)

mysql> select * from customer;
    -> //
+-------+--------+--------------+-----------+------------+
| id    | name   | address      | city      | ph_no      |
+-------+--------+--------------+-----------+------------+
| 10002 | sumesh | def house    | ekm       | 9632589652 |
| 10003 | ramesh | THEKKEDATH   | KOZHIKODE | 9381126781 |
| 10004 | mukesh | jkl house    | pkd       | 9632221456 |
| 10005 | rajesh | mno house    | wyn       |   98567347 |
| 10006 | akash  | zoo house    | tvm       | 8086646352 |
| 10007 | remya  | golden villa | idukki    | 7034579261 |
| 10008 | resmi  | ftp villa    | tvm       | 7034562261 |
| 10009 | amala  | udp villa    | tvm       | 7034562111 |
+-------+--------+--------------+-----------+------------+
8 rows in set (0.00 sec)




