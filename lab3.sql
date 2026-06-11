/*
Task: Let's consider a scenario where you want to retrieve information about students

from a database StudentInfo .table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order

*/


mysql> create database StudentInfo;
Query OK, 1 row affected (0.04 sec)

mysql> use StudentInfo;
Database changed

mysql> create table student(stud_id int not null primary key,FirstName varchar(50),LastName varchar(50),Age int, PhoneNo varchar(15),Address varchar(100));
Query OK, 0 rows affected (0.13 sec)

mysql> insert into student values(1,'Rahul','Sharma',20,'9876543210','Mumbai'),(2,'Priya','Patil',21,'9876543211','Pune'),(3,'Amit','Joshi',22,'9876543212','Nashik'),(4,'Sneha','Kulkarni',20,'9876543213','Nagpur'),(5,'Rohan','Deshmukh',23,'9876543214','Kolhapur');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+---------+-----------+----------+------+------------+----------+
| stud_id | FirstName | LastName | Age  | PhoneNo    | Address  |
+---------+-----------+----------+------+------------+----------+
|       1 | Rahul     | Sharma   |   20 | 9876543210 | Mumbai   |
|       2 | Priya     | Patil    |   21 | 9876543211 | Pune     |
|       3 | Amit      | Joshi    |   22 | 9876543212 | Nashik   |
|       4 | Sneha     | Kulkarni |   20 | 9876543213 | Nagpur   |
|       5 | Rohan     | Deshmukh |   23 | 9876543214 | Kolhapur |
+---------+-----------+----------+------+------------+----------+
5 rows in set (0.00 sec)

mysql> select * from student order by LastName;
+---------+-----------+----------+------+------------+----------+
| stud_id | FirstName | LastName | Age  | PhoneNo    | Address  |
+---------+-----------+----------+------+------------+----------+
|       5 | Rohan     | Deshmukh |   23 | 9876543214 | Kolhapur |
|       3 | Amit      | Joshi    |   22 | 9876543212 | Nashik   |
|       4 | Sneha     | Kulkarni |   20 | 9876543213 | Nagpur   |
|       2 | Priya     | Patil    |   21 | 9876543211 | Pune     |
|       1 | Rahul     | Sharma   |   20 | 9876543210 | Mumbai   |
+---------+-----------+----------+------+------------+----------+
5 rows in set (0.00 sec)

mysql> 