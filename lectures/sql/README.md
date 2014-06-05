#Setup

###Install sqlite by running:
```
gem install sqlite3
```

#What is a database?

- a database is an organized collection of data 
	- we use databases to store persistent information on the web
		- user information
			- username / password
			- profile information
		- form submissions
			- favorite foods, etc
		- any other persistent information
			- **persistent information**: any information you want available on the webpage *after* the client has closed your page and reset their session (cleared their cookies)

#CRUD
The four basic functions of persistent storage:
- Create
- Read
- Update
- Delete

#Database Options
- there are multiple database options out there, many of which Marcus overviewed last week.
	- as a refresher, we have:
		- PostreSQL
		- MySQL
		- mongoDB
	- Today, we are going to learn how to use SQLite
		- Your Rails / Sinatra apps will be built on MySQL (**very** similar to SQLite)
		- Both use SQL!
	- All SQL-based databases are relational. (As opposed to NoSQL -- a non-relational database)

#What is SQL?
SQL is a standard language for accessing information from databases.
- SQL = **Standard Query Language**

#SQL In-Class Exercise

###Normally, to create our database we would run:
```sql
> CREATE DATABASE my_db;
```

###But using sqlite, we run:
```
sqlite3 my_db
```
- This creates a new SQLite database within your pwd and opens a SQLite command environment to manipulate that database.

###Now, let's create a table within our database.
```sql
CREATE TABLE table_name
(
column_name1 data_type(size),
column_name2 data_type(size),
column_name3 data_type(size),
....
);
```

###We need to put some information into our tables.
```sql
INSERT INTO table_name (column1,column2,column3,...)
VALUES (value1,value2,value3,...);
```

###That information is pretty useless if we can't read it.
```sql
SELECT column_name,column_name
FROM table_name;
```

###And what if we want to change one of our entries? 
```sql
UPDATE table_name
SET column1=value1,column2=value2,...
WHERE some_column=some_value;
```

###Errare humanum est. We'd better be able to delete entries we don't want.
```sql
DELETE FROM table_name
WHERE some_column=some_value;
```

#SQL Data Types
###The Basic Types
- varchar(n) -- a character string of variable length. maximum length n.
- int -- an integer in the range -2^31 to 2^31-1    (4 bytes)
- boolean -- true / false

###Numbers (cont.)
- bit
- smallint, bigint, tinyint
- double (m,d)
- float
- decimal(p,s)

The good news -- you will **never** need to worry about this!

###Date / Times
- date -- stores year, month, day
- time -- stores hour, minutes, second
- timestamp -- stores year, month, day, hour, minutes, second

#Resources

[Basic SQL Syntax](http://www.w3schools.com/sql/default.asp)
[SQL Data Types](http://www.w3schools.com/sql/sql_datatypes_general.asp)

