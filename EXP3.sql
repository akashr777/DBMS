// a)TCL COMMANDS---->Commit,Rollback,Savepoint
mysql> use akash;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select * from PERSON;
+------+----------+----------+---------+-----------+
| SSN  | emp_name | emp_city | emp_dob | adhaar_no |
+------+----------+----------+---------+-----------+
|    1 | akash    | calicut  |    2002 | 123445678 |
|    1 | anugrah  | wayanad  |    2003 |  12325678 |
|    2 | abhi     | palakkad |    1999 | 222235678 |
|    3 | abhin    | palakkad |    2003 | 222235678 |
|    4 | anu      | wayanad  |    2002 |     32171 |
+------+----------+----------+---------+-----------+
5 rows in set (0.00 sec)

mysql> set autocommit=off;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into PERSON values(4,"sinan","wayanad",2002,32171);
Query OK, 1 row affected (0.00 sec)

mysql> commit;
Query OK, 0 rows affected (0.00 sec)
mysql> select * from PERSON;
+------+----------+----------+---------+-----------+
| SSN  | emp_name | emp_city | emp_dob | adhaar_no |
+------+----------+----------+---------+-----------+
|    1 | akash    | calicut  |    2002 | 123445678 |
|    1 | anugrah  | wayanad  |    2003 |  12325678 |
|    2 | abhi     | palakkad |    1999 | 222235678 |
|    3 | abhin    | palakkad |    2003 | 222235678 |
|    4 | anu      | wayanad  |    2002 |     32171 |
+------+----------+----------+---------+-----------+
5 rows in set (0.00 sec)
mysql> delete from  PERSON
    -> where SSN=4;
Query OK, 2 rows affected (0.00 sec)
mysql> select * from PERSON;
+------+----------+----------+---------+-----------+
| SSN  | emp_name | emp_city | emp_dob | adhaar_no |
+------+----------+----------+---------+-----------+
|    1 | akash    | calicut  |    2002 | 123445678 |
|    1 | anugrah  | wayanad  |    2003 |  12325678 |
|    2 | abhi     | palakkad |    1999 | 222235678 |
|    3 | abhin    | palakkad |    2003 | 222235678 |
+------+----------+----------+---------+-----------+
4 rows in set (0.00 sec)

mysql> rollback;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from PERSON;
+------+----------+----------+---------+-----------+
| SSN  | emp_name | emp_city | emp_dob | adhaar_no |
+------+----------+----------+---------+-----------+
|    1 | akash    | calicut  |    2002 | 123445678 |
|    1 | anugrah  | wayanad  |    2003 |  12325678 |
|    2 | abhi     | palakkad |    1999 | 222235678 |
|    3 | abhin    | palakkad |    2003 | 222235678 |
|    4 | anu      | wayanad  |    2002 |     32171 |
|    4 | sinan    | wayanad  |    2002 |     32171 |
+------+----------+----------+---------+-----------+
6 rows in set (0.01 sec)

mysql> select * from PERSON;
+------+----------+----------+---------+-----------+
| SSN  | emp_name | emp_city | emp_dob | adhaar_no |
+------+----------+----------+---------+-----------+
|    1 | akash    | calicut  |    2002 | 123445678 |
|    1 | anugrah  | wayanad  |    2003 |  12325678 |
|    2 | abhi     | palakkad |    1999 | 222235678 |
|    3 | abhin    | palakkad |    2003 | 222235678 |
|    4 | anu      | wayanad  |    2002 |     32171 |
|    4 | sinan    | wayanad  |    2002 |     32171 |
+------+----------+----------+---------+-----------+
6 rows in set (0.01 sec)

mysql> set autocommit=off;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into PERSON values(5,"amann","wayanad",2002,32171);
Query OK, 1 row affected (0.00 sec)

mysql> savepoint s1;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into PERSON values(6,"yedu","idukki",2002,32171);
Query OK, 1 row affected (0.00 sec)

mysql> savepoint s2;
Query OK, 0 rows affected (0.00 sec)

mysql> insert into PERSON values(7,"amala","idukki",2102,32171);
Query OK, 1 row affected (0.00 sec)

mysql> savepoint s3;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from PERSON;
+------+----------+----------+---------+-----------+
| SSN  | emp_name | emp_city | emp_dob | adhaar_no |
+------+----------+----------+---------+-----------+
|    1 | akash    | calicut  |    2002 | 123445678 |
|    1 | anugrah  | wayanad  |    2003 |  12325678 |
|    2 | abhi     | palakkad |    1999 | 222235678 |
|    3 | abhin    | palakkad |    2003 | 222235678 |
|    4 | anu      | wayanad  |    2002 |     32171 |
|    4 | sinan    | wayanad  |    2002 |     32171 |
|    5 | amann    | wayanad  |    2002 |     32171 |
|    6 | yedu     | idukki   |    2002 |     32171 |
|    7 | amala    | idukki   |    2102 |     32171 |
+------+----------+----------+---------+-----------+
9 rows in set (0.00 sec)
mysql> rollback to s2;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from PERSON;
+------+----------+----------+---------+-----------+
| SSN  | emp_name | emp_city | emp_dob | adhaar_no |
+------+----------+----------+---------+-----------+
|    1 | akash    | calicut  |    2002 | 123445678 |
|    1 | anugrah  | wayanad  |    2003 |  12325678 |
|    2 | abhi     | palakkad |    1999 | 222235678 |
|    3 | abhin    | palakkad |    2003 | 222235678 |
|    4 | anu      | wayanad  |    2002 |     32171 |
|    4 | sinan    | wayanad  |    2002 |     32171 |
|    5 | amann    | wayanad  |    2002 |     32171 |
|    6 | yedu     | idukki   |    2002 |     32171 |
+------+----------+----------+---------+-----------+
8 rows in set (0.00 sec)

b)DCL COMMANDS

//DCL COMMANDS

mysql> create user abc@'localhost' identified by 'mypass';
Query OK, 0 rows affected (0.02 sec)
mysql> create USER akashr@'localhost' identified by 'akash';
Query OK, 0 rows affected (0.02 sec)
mysql> grant insert,select on invoice.customer to abc@'localhost';
Query OK, 0 rows affected (0.00 sec)

mysql> show grants for abc@'localhost';
+-------------------------------------------------------------------+
| Grants for abc@localhost                                          |
+-------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `abc`@`localhost`                           |
| GRANT SELECT, INSERT ON `invoice`.`customer` TO `abc`@`localhost` |
+-------------------------------------------------------------------+
2 rows in set (0.00 sec)
mysql> grant update,delete on invoice.customer to akashr@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> show grants for akashr@'localhost';
+----------------------------------------------------------------------+
| Grants for akashr@localhost                                          |
+----------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `akashr`@`localhost`                           |
| GRANT UPDATE, DELETE ON `invoice`.`customer` TO `akashr`@`localhost` |
+----------------------------------------------------------------------+
2 rows in set (0.00 sec)
mysql> revoke delete on invoice.customer from akashr@'localhost';
Query OK, 0 rows affected (0.00 sec)

mysql> show grants for akashr@'localhost';
+--------------------------------------------------------------+
| Grants for akashr@localhost                                  |
+--------------------------------------------------------------+
| GRANT USAGE ON *.* TO `akashr`@`localhost`                   |
| GRANT UPDATE ON `invoice`.`customer` TO `akashr`@`localhost` |
+--------------------------------------------------------------+
2 rows in set (0.00 sec)
