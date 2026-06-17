mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| db1                     |
| ecommerces              |
| information_schema      |
| joins                   |
| mysql                   |
| performance_schema      |
| studentinfo             |
| studentmanagementsystem |
| sys                     |
+-------------------------+
9 rows in set (0.05 sec)

mysql> use  studentmanagementsystem;
Database changed

mysql> create table Students(StudentId int not null primary key,FirstName varchar(50) not null,lastName varchar(50) not null);
Query OK, 0 rows affected (0.05 sec)

mysql> desc Students;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| StudentId | int         | NO   | PRI | NULL    |       |
| FirstName | varchar(50) | NO   |     | NULL    |       |
| lastName  | varchar(50) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql>  insert into Students values(101,'Aarav','Sharma'),(102,'Rohan','Mehta'),(103,'Ananya','Joshi'),(104,'Ishita','Nair'),(105,'Vivek','Rao');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Students;
+-----------+-----------+----------+
| StudentId | FirstName | lastName |
+-----------+-----------+----------+
|       101 | Aarav     | Sharma   |
|       102 | Rohan     | Mehta    |
|       103 | Ananya    | Joshi    |
|       104 | Ishita    | Nair     |
|       105 | Vivek     | Rao      |
+-----------+-----------+----------+
5 rows in set (0.00 sec)

mysql> create table Course(CourseId int not null primary key,CourseName varchar(50) not null);
Query OK, 0 rows affected (0.03 sec)

mysql> desc Course;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| CourseId   | int         | NO   | PRI | NULL    |       |
| CourseName | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> insert into Course values(1,'Maths'),(2,'English'),(3,'Hindi'),(4,'Science'),(5,'History');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>  select * from Course;
+----------+------------+
| CourseId | CourseName |
+----------+------------+
|        1 | Maths      |
|        2 | English    |
|        3 | Hindi      |
|        4 | Science    |
|        5 | History    |
+----------+------------+
5 rows in set (0.00 sec)

mysql> create table Enrollment(EnrollmentId int not null primary key,StudentId int not null,CourseId int not null,foreign key(StudentId) references Students(StudentId),foreign key(CourseId) references Course(CourseId));
Query OK, 0 rows affected (0.04 sec)

mysql> desc Enrollment;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| EnrollmentId | int  | NO   | PRI | NULL    |       |
| StudentId    | int  | NO   | MUL | NULL    |       |
| CourseId     | int  | NO   | MUL | NULL    |       |
+--------------+------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into Enrollment values(1001,101,1),(1002,102,5),(1003,103,3),(1004,104,2),(1005,105,4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>  select * from Enrollment;
+--------------+-----------+----------+
| EnrollmentId | StudentId | CourseId |
+--------------+-----------+----------+
|         1001 |       101 |        1 |
|         1002 |       102 |        5 |
|         1003 |       103 |        3 |
|         1004 |       104 |        2 |
|         1005 |       105 |        4 |
+--------------+-----------+----------+
5 rows in set (0.00 sec)

mysql>  select Students.StudentId,Students.FirstName,Students.LastName,Course.CourseId,Course.CourseName FROM Enrollment INNER JOIN Students ON Enrollment.StudentID = Students.StudentId INNER JOIN Course ON Enrollment.CourseID = Course.CourseId;
+-----------+-----------+----------+----------+------------+
| StudentId | FirstName | LastName | CourseId | CourseName |
+-----------+-----------+----------+----------+------------+
|       101 | Aarav     | Sharma   |        1 | Maths      |
|       102 | Rohan     | Mehta    |        5 | History    |
|       103 | Ananya    | Joshi    |        3 | Hindi      |
|       104 | Ishita    | Nair     |        2 | English    |
|       105 | Vivek     | Rao      |        4 | Science    |
+-----------+-----------+----------+----------+------------+
5 rows in set (0.00 sec)
