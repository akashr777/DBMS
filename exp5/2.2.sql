exp 2 PL SQL
--------------

2.2
----

1)

mysql> create function priceind(price int)returns varchar(20)
    -> deterministic
    -> begin
    -> declare price_ind varchar(20);
    -> if price<=35 then set price_ind="low";
    -> elseif(price>35 and price<=200)then set price_ind="medium";
    -> elseif price>200 then set price_ind="high";
    -> end if;
    -> return(price_ind);
    -> end
    -> //
Query OK, 0 rows affected (0.01 sec)

mysql> select pid,pname,price,priceind(price) from product;
    -> //
+------+--------+-------+-----------------+
| pid  | pname  | price | priceind(price) |
+------+--------+-------+-----------------+
| 1111 | pencil |    51 | medium          |
| 2222 | pen    |    71 | medium          |
| 3333 | book   |   224 | high            |
| 4444 | soap   |   153 | medium          |
| 5555 | Bucket |    31 | low             |
+------+--------+-------+-----------------+
5 rows in set (0.00 sec)
