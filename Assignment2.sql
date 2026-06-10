
mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| db1                     |
| ecommerces              |
| information_schema      |
| mysql                   |
| performance_schema      |
| studentmanagementsystem |
| sys                     |
+-------------------------+
7 rows in set (0.01 sec)

mysql> use ecommerces;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_ecommerces |
+----------------------+
| customer             |
| employee_details     |
| order_details        |
| product              |
+----------------------+
4 rows in set (0.01 sec)

mysql> select * from employee_details;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Ankit Kanu     |          50000 |
|          2 | Ishan Gupta    |          60000 |
|          3 | Shreya Chingam |         100000 |
|          4 | Ganesh Yadav   |          40000 |
|          5 | Shweta Pal     |          70000 |
+------------+----------------+----------------+
5 rows in set (0.01 sec)

mysql>  select * from employee_details limit 3;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Ankit Kanu     |          50000 |
|          2 | Ishan Gupta    |          60000 |
|          3 | Shreya Chingam |         100000 |
+------------+----------------+----------------+
3 rows in set (0.00 sec)

mysql> select * from employee_details limit 2;
+------------+--------------+----------------+
| employeeID | employeeName | employeeSalary |
+------------+--------------+----------------+
|          1 | Ankit Kanu   |          50000 |
|          2 | Ishan Gupta  |          60000 |
+------------+--------------+----------------+
2 rows in set (0.00 sec)

mysql> select * from employee_details order by employeeSalary ;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          4 | Ganesh Yadav   |          40000 |
|          1 | Ankit Kanu     |          50000 |
|          2 | Ishan Gupta    |          60000 |
|          5 | Shweta Pal     |          70000 |
|          3 | Shreya Chingam |         100000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql>  select * from employee_details order by employeeName ;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Ankit Kanu     |          50000 |
|          4 | Ganesh Yadav   |          40000 |
|          2 | Ishan Gupta    |          60000 |
|          3 | Shreya Chingam |         100000 |
|          5 | Shweta Pal     |          70000 |
+------------+----------------+----------------+
5 rows in set (0.01 sec)

mysql> select * from employee_details order by employeeName desc;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          5 | Shweta Pal     |          70000 |
|          3 | Shreya Chingam |         100000 |
|          2 | Ishan Gupta    |          60000 |
|          4 | Ganesh Yadav   |          40000 |
|          1 | Ankit Kanu     |          50000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql>  select * from employee_details order by employeeSalary desc;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          3 | Shreya Chingam |         100000 |
|          5 | Shweta Pal     |          70000 |
|          2 | Ishan Gupta    |          60000 |
|          1 | Ankit Kanu     |          50000 |
|          4 | Ganesh Yadav   |          40000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employeeSalary desc limit 2;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          3 | Shreya Chingam |         100000 |
|          5 | Shweta Pal     |          70000 |
+------------+----------------+----------------+
2 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+---------+--------+-------------------------+----------+-----------------------+----------+
| customer_id | Name    | city   | email                   | phone_no | address               | pin_code |
+-------------+---------+--------+-------------------------+----------+-----------------------+----------+
| c101        | dikshya | diva   | dikshapanda66@gmail.com |     9930 | chandrangan residency |   400611 |
| c102        | dipti   | thane  | dipti6@gmail.com        |     5656 | maurya                |   484801 |
| c103        | shubham | sion   | shubhu@gmail.com        |     3634 | gdfjh                 |    26267 |
| c104        | anjali  | kopar  | anjali@gmail.com        |     7636 | agrakoli              |   253616 |
| c105        | shambhu | mumbai | shambhu@gamil.com       |     2525 | lodha                 |   277313 |
+-------------+---------+--------+-------------------------+----------+-----------------------+----------+
5 rows in set (0.00 sec)

mysql> select distinct city from customer;
+--------+
| city   |
+--------+
| diva   |
| thane  |
| sion   |
| kopar  |
| mumbai |
+--------+
5 rows in set (0.01 sec)

mysql>  select city from customer;
+--------+
| city   |
+--------+
| diva   |
| thane  |
| sion   |
| kopar  |
| mumbai |
+--------+
5 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+---------+--------+-------------------------+----------+-----------------------+----------+
| customer_id | Name    | city   | email                   | phone_no | address               | pin_code |
+-------------+---------+--------+-------------------------+----------+-----------------------+----------+
| c101        | dikshya | diva   | dikshapanda66@gmail.com |     9930 | chandrangan residency |   400611 |
| c102        | dipti   | thane  | dipti6@gmail.com        |     5656 | maurya                |   484801 |
| c103        | shubham | sion   | shubhu@gmail.com        |     3634 | gdfjh                 |    26267 |
| c104        | anjali  | kopar  | anjali@gmail.com        |     7636 | agrakoli              |   253616 |
| c105        | shambhu | mumbai | shambhu@gamil.com       |     2525 | lodha                 |   277313 |
+-------------+---------+--------+-------------------------+----------+-----------------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id between 'C101' and 'C104';
+-------------+---------+-------+-------------------------+----------+-----------------------+----------+
| customer_id | Name    | city  | email                   | phone_no | address               | pin_code |
+-------------+---------+-------+-------------------------+----------+-----------------------+----------+
| c101        | dikshya | diva  | dikshapanda66@gmail.com |     9930 | chandrangan residency |   400611 |
| c102        | dipti   | thane | dipti6@gmail.com        |     5656 | maurya                |   484801 |
| c103        | shubham | sion  | shubhu@gmail.com        |     3634 | gdfjh                 |    26267 |
| c104        | anjali  | kopar | anjali@gmail.com        |     7636 | agrakoli              |   253616 |
+-------------+---------+-------+-------------------------+----------+-----------------------+----------+
4 rows in set (0.00 sec)

mysql> select * from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p105       |       20 |       20000 | cash         | 2026-06-08 00:00:00 | shipping     |
|      103 | c105        | p103       |       60 |      100000 | cash         | 2026-02-08 00:00:00 | delivered    |
|      104 | c104        | p104       |       10 |     2000000 | phonepay     | 2026-01-10 00:00:00 | shipping     |
|      105 | c103        | p104       |       20 |       50000 | cash         | 2026-06-06 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.00 sec)

mysql> select * from order_details where order_date between '2026-01-01' and '2026-04-01';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      103 | c105        | p103       |       60 |      100000 | cash         | 2026-02-08 00:00:00 | delivered    |
|      104 | c104        | p104       |       10 |     2000000 | phonepay     | 2026-01-10 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
2 rows in set (0.00 sec)

mysql> select * from order_details where order_date not between '2026-01-01' and '2026-04-01';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p105       |       20 |       20000 | cash         | 2026-06-08 00:00:00 | shipping     |
|      105 | c103        | p104       |       20 |       50000 | cash         | 2026-06-06 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
3 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+---------+--------+-------------------------+----------+-----------------------+----------+
| customer_id | Name    | city   | email                   | phone_no | address               | pin_code |
+-------------+---------+--------+-------------------------+----------+-----------------------+----------+
| c101        | dikshya | diva   | dikshapanda66@gmail.com |     9930 | chandrangan residency |   400611 |
| c102        | dipti   | thane  | dipti6@gmail.com        |     5656 | maurya                |   484801 |
| c103        | shubham | sion   | shubhu@gmail.com        |     3634 | gdfjh                 |    26267 |
| c104        | anjali  | kopar  | anjali@gmail.com        |     7636 | agrakoli              |   253616 |
| c105        | shambhu | mumbai | shambhu@gamil.com       |     2525 | lodha                 |   277313 |
+-------------+---------+--------+-------------------------+----------+-----------------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id in('C101','C103','C105');
+-------------+---------+--------+-------------------------+----------+-----------------------+----------+
| customer_id | Name    | city   | email                   | phone_no | address               | pin_code |
+-------------+---------+--------+-------------------------+----------+-----------------------+----------+
| c101        | dikshya | diva   | dikshapanda66@gmail.com |     9930 | chandrangan residency |   400611 |
| c103        | shubham | sion   | shubhu@gmail.com        |     3634 | gdfjh                 |    26267 |
| c105        | shambhu | mumbai | shambhu@gamil.com       |     2525 | lodha                 |   277313 |
+-------------+---------+--------+-------------------------+----------+-----------------------+----------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_id not in('C101','C103','C105');
+-------------+--------+-------+------------------+----------+----------+----------+
| customer_id | Name   | city  | email            | phone_no | address  | pin_code |
+-------------+--------+-------+------------------+----------+----------+----------+
| c102        | dipti  | thane | dipti6@gmail.com |     5656 | maurya   |   484801 |
| c104        | anjali | kopar | anjali@gmail.com |     7636 | agrakoli |   253616 |
+-------------+--------+-------+------------------+----------+----------+----------+
2 rows in set (0.00 sec)

mysql> ^C
mysql> select * from customer where city is null;
Empty set (0.00 sec)

mysql>  select * from customer where city is not null;
+-------------+---------+--------+-------------------------+----------+-----------------------+----------+
| customer_id | Name    | city   | email                   | phone_no | address               | pin_code |
+-------------+---------+--------+-------------------------+----------+-----------------------+----------+
| c101        | dikshya | diva   | dikshapanda66@gmail.com |     9930 | chandrangan residency |   400611 |
| c102        | dipti   | thane  | dipti6@gmail.com        |     5656 | maurya                |   484801 |
| c103        | shubham | sion   | shubhu@gmail.com        |     3634 | gdfjh                 |    26267 |
| c104        | anjali  | kopar  | anjali@gmail.com        |     7636 | agrakoli              |   253616 |
| c105        | shambhu | mumbai | shambhu@gamil.com       |     2525 | lodha                 |   277313 |
+-------------+---------+--------+-------------------------+----------+-----------------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where city='Thane' and address='lodha';
Empty set (0.00 sec)

mysql> select * from customer where city='Thane' or address='lodha';
+-------------+---------+--------+-------------------+----------+---------+----------+
| customer_id | Name    | city   | email             | phone_no | address | pin_code |
+-------------+---------+--------+-------------------+----------+---------+----------+
| c102        | dipti   | thane  | dipti6@gmail.com  |     5656 | maurya  |   484801 |
| c105        | shambhu | mumbai | shambhu@gamil.com |     2525 | lodha   |   277313 |
+-------------+---------+--------+-------------------+----------+---------+----------+
2 rows in set (0.00 sec)

