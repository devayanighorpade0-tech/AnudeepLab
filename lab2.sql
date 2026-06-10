/*

Lab 1: Database Schema: Consider a simple database with one tables: BankAccount 

 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

*/

mysql> create table BankAccount(account_id varchar(20) not null primary key, account_holder_name varchar(50) not null,account_balance double not null);
Query OK, 0 rows affected (0.09 sec)

mysql> insert into BankAccount values('101', 'Rahul Sharma', 45000),('102', 'Priya Patil', 28000),('103', 'Amit Kumar', 55000),('104', 'Sneha Joshi', 32000),('105', 'Rohan Desai', 25000);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0



/*
. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

*/


mysql> SELECT account_holder_name, account_balance FROM BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Rahul Sharma        |           45000 |
| Priya Patil         |           28000 |
| Amit Kumar          |           55000 |
| Sneha Joshi         |           32000 |
| Rohan Desai         |           25000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)


/*
Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

*/


mysql> SELECT account_holder_name, account_balance FROM BankAccount WHERE account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Rahul Sharma        |           45000 |
| Amit Kumar          |           55000 |
| Sneha Joshi         |           32000 |
+---------------------+-----------------+
3 rows in set (0.01 sec)


/*
 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 

8/

mysql> UPDATE BankAccount SET account_balance = 50000 WHERE account_id = '101';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM BankAccount WHERE account_id = '101';
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Rahul Sharma        |           50000 |
+------------+---------------------+-----------------+
1 row in set (0.00 sec)
