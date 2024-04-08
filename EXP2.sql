EXPERIMENT 2

//table person

mysql> insert into person values(001,"Tinku","kollam",2000,965874125634);
Query OK, 1 row affected (0.01 sec)

mysql> insert into person values(002,"Minku","kozhikode",2001,321456852147);
Query OK, 1 row affected (0.00 sec)

mysql> insert into person values(003,"Pinku","wayanad",2002,562463298412);
Query OK, 1 row affected (0.01 sec)

mysql> insert into person values(004,"Binku","malappuram",1998,254125632578);
Query OK, 1 row affected (0.01 sec)

mysql> select * from person;
+------+-------+------------+------+--------------+
| ssn  | name  | city       | dob  | adhar_no     |
+------+-------+------------+------+--------------+
|    1 | Tinku | kollam     | 2000 | 965874125634 |
|    2 | Minku | kozhikode  | 2001 | 321456852147 |
|    3 | Pinku | wayanad    | 2002 | 562463298412 |
|    4 | Binku | malappuram | 1998 | 254125632578 |
+------+-------+------------+------+--------------+
4 rows in set (0.00 sec)

//table student

mysql> insert into student values(1,"Tinku",25,"kollam house","F");
Query OK, 1 row affected (0.00 sec)

mysql> insert into student values(2,"Minku",22,"kozhikode house","F");
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(3,"Pinku",21,"wayanad house","F");
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(4,"Binku",20,"malappuram house","M");
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+---------+-------+------+------------------+--------+
| roll_no | name  | age  | address          | gender |
+---------+-------+------+------------------+--------+
|       1 | Tinku |   25 | kollam house     | F      |
|       2 | Minku |   22 | kozhikode house  | F      |
|       3 | Pinku |   21 | wayanad house    | F      |
|       4 | Binku |   20 | malappuram house | M      |
+---------+-------+------+------------------+--------+
4 rows in set (0.00 sec)


//table customer

mysql> insert into customer values(10001,"dinesh","abc house","calicut",9685234157);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values(10002,"sumesh","def house","ekm",9632589652);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values(10003,"ramesh","ghi house","tvm",9996587411);
Query OK, 1 row affected (0.00 sec)

mysql> insert into customer values(10004,"mukesh","jkl house","pkd",9632221456);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values(10005,"rajesh","mno house","wyn",9712346895);
Query OK, 1 row affected (0.00 sec)

mysql> select * from customer;
+-------+--------+-----------+---------+------------+
| id    | name   | address   | city    | ph_no      |
+-------+--------+-----------+---------+------------+
| 10001 | dinesh | abc house | calicut | 9685234157 |
| 10002 | sumesh | def house | ekm     | 9632589652 |
| 10003 | ramesh | ghi house | tvm     | 9996587411 |
| 10004 | mukesh | jkl house | pkd     | 9632221456 |
| 10005 | rajesh | mno house | wyn     | 9712346895 |
+-------+--------+-----------+---------+------------+
5 rows in set (0.00 sec)

mysql> delete from customer where id="10003";
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer(id,name,address,city)values(10003,"ramesh","ghi house","tvm");
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------+--------+-----------+---------+------------+
| id    | name   | address   | city    | ph_no      |
+-------+--------+-----------+---------+------------+
| 10001 | dinesh | abc house | calicut | 9685234157 |
| 10002 | sumesh | def house | ekm     | 9632589652 |
| 10003 | ramesh | ghi house | tvm     |       NULL |
| 10004 | mukesh | jkl house | pkd     | 9632221456 |
| 10005 | rajesh | mno house | wyn     | 9712346895 |
+-------+--------+-----------+---------+------------+
5 rows in set (0.00 sec)


mysql> insert into product values(1111,"pencil",50);
Query OK, 1 row affected (0.00 sec)

mysql> insert into product values(2222,"pen",70);
Query OK, 1 row affected (0.00 sec)

mysql> insert into product values(3333,"book",180);
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values(4444,"soap",150);
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values(5555,"Bucket",30);
Query OK, 1 row affected (0.01 sec)

mysql> select * from product;
+------+--------+-------+
| pid  | pname  | price |
+------+--------+-------+
| 1111 | pencil |    50 |
| 2222 | pen    |    70 |
| 3333 | book   |   180 |
| 4444 | soap   |   150 |
| 5555 | Bucket |    30 |
+------+--------+-------+
5 rows in set (0.00 sec)


mysql> insert into invoice_master values(101,10001,20210211);
Query OK, 1 row affected (0.01 sec)

mysql> insert into invoice_master values(102,10002,20210423);
Query OK, 1 row affected (0.01 sec)

mysql> insert into invoice_master values(103,10003,20220901);
Query OK, 1 row affected (0.00 sec)

mysql> insert into invoice_master values(104,10004,20220117);
Query OK, 1 row affected (0.01 sec)

mysql> insert into invoice_master values(105,10005,20231130);
Query OK, 1 row affected (0.00 sec)

mysql> insert into invoice_master values(106,10003,20230512);
Query OK, 1 row affected (0.00 sec)

mysql> select * from invoice_master;
+--------+---------+------------+
| inv_id | cust_id | inv_date   |
+--------+---------+------------+
|    101 |   10001 | 2021-02-11 |
|    102 |   10002 | 2021-04-23 |
|    103 |   10003 | 2022-09-01 |
|    104 |   10004 | 2022-01-17 |
|    105 |   10005 | 2023-11-30 |
|    106 |   10003 | 2023-05-12 |
+--------+---------+------------+
6 rows in set (0.00 sec)


mysql> insert into invoice_item values(101,1111,10);
Query OK, 1 row affected (0.01 sec)

mysql> insert into invoice_item values(102,3333,1);
Query OK, 1 row affected (0.01 sec)

mysql> insert into invoice_item values(103,5555,2);
Query OK, 1 row affected (0.00 sec)

mysql> insert into invoice_item values(104,2222,20);
Query OK, 1 row affected (0.00 sec)

mysql> insert into invoice_item values(105,3333,12);
Query OK, 1 row affected (0.01 sec)

mysql> insert into invoice_item values(106,4444,5);
Query OK, 1 row affected (0.00 sec)

mysql> select * from invoice_item;
+--------+------+----------+
| inv_id | pid  | quantity |
+--------+------+----------+
|    101 | 1111 |       10 |
|    102 | 3333 |        1 |
|    103 | 5555 |        2 |
|    104 | 2222 |       20 |
|    105 | 3333 |       12 |
|    106 | 4444 |        5 |
+--------+------+----------+
6 rows in set (0.00 sec)


mysql> delete from invoice_item where inv_id=104;
Query OK, 1 row affected (0.01 sec)

mysql> delete from invoice_master where inv_id=104;
Query OK, 1 row affected (0.00 sec)

mysql> insert into invoice_item values(101,2222,5);
Query OK, 1 row affected (0.00 sec)

mysql> insert into invoice_item values(101,5555,4);
Query OK, 1 row affected (0.01 sec)

mysql> select * from invoice_item;
+--------+------+----------+
| inv_id | pid  | quantity |
+--------+------+----------+
|    101 | 1111 |       10 |
|    102 | 3333 |        1 |
|    103 | 5555 |        2 |
|    105 | 3333 |       12 |
|    106 | 4444 |        5 |
|    101 | 2222 |        5 |
|    101 | 5555 |        4 |
+--------+------+----------+
7 rows in set (0.00 sec)

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
5 rows in set (0.00 sec)


mysql> update product set price=220 where pid=3333;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from product;
+------+--------+-------+
| pid  | pname  | price |
+------+--------+-------+
| 1111 | pencil |    50 |
| 2222 | pen    |    70 |
| 3333 | book   |   220 |
| 4444 | soap   |   150 |
| 5555 | Bucket |    30 |
+------+--------+-------+
5 rows in set (0.00 sec)
EXPERIMENT 2

//table person

mysql> insert into person values(001,"Tinku","kollam",2000,965874125634);
Query OK, 1 row affected (0.01 sec)

mysql> insert into person values(002,"Minku","kozhikode",2001,321456852147);
Query OK, 1 row affected (0.00 sec)

mysql> insert into person values(003,"Pinku","wayanad",2002,562463298412);
Query OK, 1 row affected (0.01 sec)

mysql> insert into person values(004,"Binku","malappuram",1998,254125632578);
Query OK, 1 row affected (0.01 sec)

mysql> select * from person;
+------+-------+------------+------+--------------+
| ssn  | name  | city       | dob  | adhar_no     |
+------+-------+------------+------+--------------+
|    1 | Tinku | kollam     | 2000 | 965874125634 |
|    2 | Minku | kozhikode  | 2001 | 321456852147 |
|    3 | Pinku | wayanad    | 2002 | 562463298412 |
|    4 | Binku | malappuram | 1998 | 254125632578 |
+------+-------+------------+------+--------------+
4 rows in set (0.00 sec)

//table student

mysql> insert into student values(1,"Tinku",25,"kollam house","F");
Query OK, 1 row affected (0.00 sec)

mysql> insert into student values(2,"Minku",22,"kozhikode house","F");
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(3,"Pinku",21,"wayanad house","F");
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(4,"Binku",20,"malappuram house","M");
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+---------+-------+------+------------------+--------+
| roll_no | name  | age  | address          | gender |
+---------+-------+------+------------------+--------+
|       1 | Tinku |   25 | kollam house     | F      |
|       2 | Minku |   22 | kozhikode house  | F      |
|       3 | Pinku |   21 | wayanad house    | F      |
|       4 | Binku |   20 | malappuram house | M      |
+---------+-------+------+------------------+--------+
4 rows in set (0.00 sec)


//table customer

mysql> insert into customer values(10001,"dinesh","abc house","calicut",9685234157);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values(10002,"sumesh","def house","ekm",9632589652);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values(10003,"ramesh","ghi house","tvm",9996587411);
Query OK, 1 row affected (0.00 sec)

mysql> insert into customer values(10004,"mukesh","jkl house","pkd",9632221456);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values(10005,"rajesh","mno house","wyn",9712346895);
Query OK, 1 row affected (0.00 sec)

mysql> select * from customer;
+-------+--------+-----------+---------+------------+
| id    | name   | address   | city    | ph_no      |
+-------+--------+-----------+---------+------------+
| 10001 | dinesh | abc house | calicut | 9685234157 |
| 10002 | sumesh | def house | ekm     | 9632589652 |
| 10003 | ramesh | ghi house | tvm     | 9996587411 |
| 10004 | mukesh | jkl house | pkd     | 9632221456 |
| 10005 | rajesh | mno house | wyn     | 9712346895 |
+-------+--------+-----------+---------+------------+
5 rows in set (0.00 sec)

mysql> delete from customer where id="10003";
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer(id,name,address,city)values(10003,"ramesh","ghi house","tvm");
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------+--------+-----------+---------+------------+
| id    | name   | address   | city    | ph_no      |
+-------+--------+-----------+---------+------------+
| 10001 | dinesh | abc house | calicut | 9685234157 |
| 10002 | sumesh | def house | ekm     | 9632589652 |
| 10003 | ramesh | ghi house | tvm     |       NULL |
| 10004 | mukesh | jkl house | pkd     | 9632221456 |
| 10005 | rajesh | mno house | wyn     | 9712346895 |
+-------+--------+-----------+---------+------------+
5 rows in set (0.00 sec)


mysql> insert into product values(1111,"pencil",50);
Query OK, 1 row affected (0.00 sec)

mysql> insert into product values(2222,"pen",70);
Query OK, 1 row affected (0.00 sec)

mysql> insert into product values(3333,"book",180);
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values(4444,"soap",150);
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values(5555,"Bucket",30);
Query OK, 1 row affected (0.01 sec)

mysql> select * from product;
+------+--------+-------+
| pid  | pname  | price |
+------+--------+-------+
| 1111 | pencil |    50 |
| 2222 | pen    |    70 |
| 3333 | book   |   180 |
| 4444 | soap   |   150 |
| 5555 | Bucket |    30 |
+------+--------+-------+
5 rows in set (0.00 sec)


mysql> insert into invoice_master values(101,10001,20210211);
Query OK, 1 row affected (0.01 sec)

mysql> insert into invoice_master values(102,10002,20210423);
Query OK, 1 row affected (0.01 sec)

mysql> insert into invoice_master values(103,10003,20220901);
Query OK, 1 row affected (0.00 sec)

mysql> insert into invoice_master values(104,10004,20220117);
Query OK, 1 row affected (0.01 sec)

mysql> insert into invoice_master values(105,10005,20231130);
Query OK, 1 row affected (0.00 sec)

mysql> insert into invoice_master values(106,10003,20230512);
Query OK, 1 row affected (0.00 sec)

mysql> select * from invoice_master;
+--------+---------+------------+
| inv_id | cust_id | inv_date   |
+--------+---------+------------+
|    101 |   10001 | 2021-02-11 |
|    102 |   10002 | 2021-04-23 |
|    103 |   10003 | 2022-09-01 |
|    104 |   10004 | 2022-01-17 |
|    105 |   10005 | 2023-11-30 |
|    106 |   10003 | 2023-05-12 |
+--------+---------+------------+
6 rows in set (0.00 sec)


mysql> insert into invoice_item values(101,1111,10);
Query OK, 1 row affected (0.01 sec)

mysql> insert into invoice_item values(102,3333,1);
Query OK, 1 row affected (0.01 sec)

mysql> insert into invoice_item values(103,5555,2);
Query OK, 1 row affected (0.00 sec)

mysql> insert into invoice_item values(104,2222,20);
Query OK, 1 row affected (0.00 sec)

mysql> insert into invoice_item values(105,3333,12);
Query OK, 1 row affected (0.01 sec)

mysql> insert into invoice_item values(106,4444,5);
Query OK, 1 row affected (0.00 sec)

mysql> select * from invoice_item;
+--------+------+----------+
| inv_id | pid  | quantity |
+--------+------+----------+
|    101 | 1111 |       10 |
|    102 | 3333 |        1 |
|    103 | 5555 |        2 |
|    104 | 2222 |       20 |
|    105 | 3333 |       12 |
|    106 | 4444 |        5 |
+--------+------+----------+
6 rows in set (0.00 sec)


mysql> delete from invoice_item where inv_id=104;
Query OK, 1 row affected (0.01 sec)

mysql> delete from invoice_master where inv_id=104;
Query OK, 1 row affected (0.00 sec)

mysql> insert into invoice_item values(101,2222,5);
Query OK, 1 row affected (0.00 sec)

mysql> insert into invoice_item values(101,5555,4);
Query OK, 1 row affected (0.01 sec)

mysql> select * from invoice_item;
+--------+------+----------+
| inv_id | pid  | quantity |
+--------+------+----------+
|    101 | 1111 |       10 |
|    102 | 3333 |        1 |
|    103 | 5555 |        2 |
|    105 | 3333 |       12 |
|    106 | 4444 |        5 |
|    101 | 2222 |        5 |
|    101 | 5555 |        4 |
+--------+------+----------+
7 rows in set (0.00 sec)

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
5 rows in set (0.00 sec)


//DML Update

mysql> update product set price=220 where pid=3333;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from product;
+------+--------+-------+
| pid  | pname  | price |
+------+--------+-------+
| 1111 | pencil |    50 |
| 2222 | pen    |    70 |
| 3333 | book   |   220 |
| 4444 | soap   |   150 |
| 5555 | Bucket |    30 |
+------+--------+-------+
5 rows in set (0.00 sec)


mysql> update customer set city="kozhikode" where city="calicut";
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
+-------+--------+-----------+-----------+------------+
| id    | name   | address   | city      | ph_no      |
+-------+--------+-----------+-----------+------------+
| 10001 | dinesh | abc house | kozhikode | 9685234157 |
| 10002 | sumesh | def house | ekm       | 9632589652 |
| 10003 | ramesh | ghi house | tvm       |       NULL |
| 10004 | mukesh | jkl house | pkd       | 9632221456 |
| 10005 | rajesh | mno house | wyn       | 9712346895 |
+-------+--------+-----------+-----------+------------+
5 rows in set (0.00 sec)


mysql> select * from product;
+------+--------+-------+
| pid  | pname  | price |
+------+--------+-------+
| 1111 | pencil |    50 |
| 2222 | pen    |    70 |
| 3333 | book   |   220 |
| 4444 | soap   |   150 |
| 5555 | Bucket |    30 |
+------+--------+-------+
5 rows in set (0.00 sec)

mysql> update product set price=price+(price*2/100);
Query OK, 5 rows affected (0.01 sec)
Rows matched: 5  Changed: 5  Warnings: 0

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

mysql> select * from customer;
+-------+--------+-----------+-----------+------------+
| id    | name   | address   | city      | ph_no      |
+-------+--------+-----------+-----------+------------+
| 10001 | dinesh | abc house | kozhikode | 9685234157 |
| 10002 | sumesh | def house | ekm       | 9632589652 |
| 10003 | ramesh | ghi house | tvm       |       NULL |
| 10004 | mukesh | jkl house | pkd       | 9632221456 |
| 10005 | rajesh | mno house | wyn       | 9712346895 |
+-------+--------+-----------+-----------+------------+
5 rows in set (0.00 sec)

mysql> update customer set address="xyz house",city="mlp",ph_no=9633699630 where id=10004;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
+-------+--------+-----------+-----------+------------+
| id    | name   | address   | city      | ph_no      |
+-------+--------+-----------+-----------+------------+
| 10001 | dinesh | abc house | kozhikode | 9685234157 |
| 10002 | sumesh | def house | ekm       | 9632589652 |
| 10003 | ramesh | ghi house | tvm       |       NULL |
| 10004 | mukesh | xyz house | mlp       | 9633699630 |
| 10005 | rajesh | mno house | wyn       | 9712346895 |
+-------+--------+-----------+-----------+------------+
5 rows in set (0.00 sec)


mysql> select * from invoice_item;
+--------+------+----------+
| inv_id | pid  | quantity |
+--------+------+----------+
|    101 | 1111 |       10 |
|    102 | 3333 |        1 |
|    103 | 5555 |        2 |
|    105 | 3333 |       12 |
|    106 | 4444 |        5 |
|    101 | 2222 |        5 |
|    101 | 5555 |        4 |
+--------+------+----------+
7 rows in set (0.00 sec)

mysql> update invoice_item set quantity=15 where inv_id=101;
Query OK, 3 rows affected (0.01 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> select * from invoice_item;
+--------+------+----------+
| inv_id | pid  | quantity |
+--------+------+----------+
|    101 | 1111 |       15 |
|    102 | 3333 |        1 |
|    103 | 5555 |        2 |
|    105 | 3333 |       12 |
|    106 | 4444 |        5 |
|    101 | 2222 |       15 |
|    101 | 5555 |       15 |
+--------+------+----------+
7 rows in set (0.00 sec)


//DML Delete;


mysql> set foreign_key_checks=0;
Query OK, 0 rows affected (0.00 sec)

mysql> delete from customer where id=10001;
Query OK, 1 row affected (0.01 sec)

mysql> set foreign_key_checks=1;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from customer;
+-------+--------+-----------+------+------------+
| id    | name   | address   | city | ph_no      |
+-------+--------+-----------+------+------------+
| 10002 | sumesh | def house | ekm  | 9632589652 |
| 10003 | ramesh | ghi house | tvm  |       NULL |
| 10004 | mukesh | xyz house | mlp  | 9633699630 |
| 10005 | rajesh | mno house | wyn  | 9712346895 |
+-------+--------+-----------+------+------------+
4 rows in set (0.00 sec)


mysql> select * from invoice_item;
+--------+------+----------+
| inv_id | pid  | quantity |
+--------+------+----------+
|    101 | 1111 |       15 |
|    102 | 3333 |        1 |
|    103 | 5555 |        2 |
|    105 | 3333 |       12 |
|    106 | 4444 |        5 |
|    101 | 2222 |       15 |
|    101 | 5555 |       15 |
+--------+------+----------+
7 rows in set (0.00 sec)

mysql> delete from invoice_item where quantity<2;
Query OK, 1 row affected (0.01 sec)

mysql> select * from invoice_item;
+--------+------+----------+
| inv_id | pid  | quantity |
+--------+------+----------+
|    101 | 1111 |       15 |
|    103 | 5555 |        2 |
|    105 | 3333 |       12 |
|    106 | 4444 |        5 |
|    101 | 2222 |       15 |
|    101 | 5555 |       15 |
+--------+------+----------+
6 rows in set (0.00 sec)


mysql> select * from invoice_item;
+--------+------+----------+
| inv_id | pid  | quantity |
+--------+------+----------+
|    101 | 1111 |       15 |
|    103 | 5555 |        2 |
|    105 | 3333 |       12 |
|    106 | 4444 |        5 |
|    101 | 2222 |       15 |
|    101 | 5555 |       15 |
+--------+------+----------+
6 rows in set (0.00 sec)

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

mysql> delete from invoice_item where inv_id=101 and pid=2222;
Query OK, 1 row affected (0.01 sec)

mysql> select * from invoice_item;
+--------+------+----------+
| inv_id | pid  | quantity |
+--------+------+----------+
|    101 | 1111 |       15 |
|    103 | 5555 |        2 |
|    105 | 3333 |       12 |
|    106 | 4444 |        5 |
|    101 | 5555 |       15 |
+--------+------+----------+
5 rows in set (0.00 sec)


mysql> set foreign_key_checks=0;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from customer;
+-------+--------+-----------+------+------------+
| id    | name   | address   | city | ph_no      |
+-------+--------+-----------+------+------------+
| 10002 | sumesh | def house | ekm  | 9632589652 |
| 10003 | ramesh | ghi house | tvm  |       NULL |
| 10004 | mukesh | xyz house | mlp  | 9633699630 |
| 10005 | rajesh | mno house | wyn  | 9712346895 |
+-------+--------+-----------+------+------------+
4 rows in set (0.00 sec)

mysql> delete from customer where ph_no is null;
Query OK, 1 row affected (0.00 sec)

mysql> select * from customer;
+-------+--------+-----------+------+------------+
| id    | name   | address   | city | ph_no      |
+-------+--------+-----------+------+------------+
| 10002 | sumesh | def house | ekm  | 9632589652 |
| 10004 | mukesh | xyz house | mlp  | 9633699630 |
| 10005 | rajesh | mno house | wyn  | 9712346895 |
+-------+--------+-----------+------+------------+
3 rows in set (0.00 sec)

mysql> set foreign_key_checks=1;
Query OK, 0 rows affected (0.00 sec)


mysql> use exp1;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> delete from student;
Query OK, 4 rows affected (0.01 sec)

mysql> select * from student;
Empty set (0.00 sec)

mysql> use invoice;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select * from customer;
+-------+--------+-----------+------+------------+
| id    | name   | address   | city | ph_no      |
+-------+--------+-----------+------+------------+
| 10002 | sumesh | def house | ekm  | 9632589652 |
| 10004 | mukesh | xyz house | mlp  | 9633699630 |
| 10005 | rajesh | mno house | wyn  | 9712346895 |
+-------+--------+-----------+------+------------+
3 rows in set (0.00 sec)

mysql> delete from customer where id=10004;
Query OK, 1 row affected (0.00 sec)

mysql> select * from customer;
+-------+--------+-----------+------+------------+
| id    | name   | address   | city | ph_no      |
+-------+--------+-----------+------+------------+
| 10002 | sumesh | def house | ekm  | 9632589652 |
| 10005 | rajesh | mno house | wyn  | 9712346895 |
+-------+--------+-----------+------+------------+
2 rows in set (0.00 sec)


mysql> select * from invoice_item;
+--------+------+----------+
| inv_id | pid  | quantity |
+--------+------+----------+
|    101 | 1111 |       15 |
|    103 | 5555 |        2 |
|    105 | 3333 |       12 |
|    106 | 4444 |        5 |
|    101 | 5555 |       15 |
+--------+------+----------+
5 rows in set (0.00 sec)

mysql> delete from invoice_item where quantity=15;
Query OK, 2 rows affected (0.01 sec)

mysql> select * from invoice_item;
+--------+------+----------+
| inv_id | pid  | quantity |
+--------+------+----------+
|    103 | 5555 |        2 |
|    105 | 3333 |       12 |
|    106 | 4444 |        5 |
+--------+------+----------+
3 rows in set (0.00 sec)

//VERIFIED
