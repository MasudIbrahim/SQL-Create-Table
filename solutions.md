# Explanation of SQL queries used

### 1. Creating student table

````sql
CREATE TABLE student (
student_id serial PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE NOT NULL,
homeroom_number SMALLINT NOT NULL	
);
````
When creating tables we use the CREATE TABLE statement and specify the table name followed by the column names to be added in brackets.
Each column is seperated by a comma and you're required to add the column name and datatype at the very least. For student_id it is a PRIMARY KEY and that is specified as a constraint. The SERIAL datatype will return a auto increment the student_id for us starting at 1. This can be particularly helpful if rows are deleted afterwards as the primary key won't update. 


### Creating teacher table

````sql
CREATE TABLE teacher(
teacher_id SERIAL PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE NOT NULL,
homeroom_number SMALLINT NOT NULL,
clasroom_name VARCHAR(10) NOT NULL	
);
````
The syntax is the same as above for every table creation. As mentioned above, datatypes must be entered and this is will affect the sort of values you can enter into the columns later on. For example, the VARCHAR data type which stands for variable character allows you to enter a string and reuqires ''. You also have to specify the length of the VARCHAR after in brackets. Another common data type is INT which allows you to enter a nunerical value. You can further tailor this by using SMALLINT, INT or BIGINT depending on the size of your value. A table outlining the ranges can be found [here](https://www.postgresql.org/docs/current/datatype-numeric.html).


### Creating teacher table

````sql
CREATE TABLE classroom(
clasroom_id SERIAL PRIMARY KEY,
classroom_name VARCHAR(10) UNIQUE NOT NULL				   
);
````
Another important field when creating tables is the constraints you can place on your columns. The two most common can be seen in the code above.
The UNIQUE constraint forces the values you enter later to be distinct and will return an error if values are the same. The NOT NULL constrainst requires you to input a value in that column and will return an error if left blank.


### Inserting values into student table

````sql
INSERT INTO student (first_name,last_name,email,homeroom_number)
VALUES ('Jack','Ryan','jackryan@gmail.com',1),
('Melissa','Butler','MelissaButler@gmail.com',2),
....;
````
Inserting values into a table requires the INSERT INTO and VALUES statements. Afer calling INSERT INTO you then specify the table name and then the column names in brackets and comma seperated. Then, VALUES is called and for each row a set of brackets is used with the entries matching up to the column names. String values require '' whereas numerical values do not.


### Inserting values into teacher table

````sql
INSERT INTO teacher(first_name,last_name,email,homeroom_number,classroom_name)
VALUES
('Penny','East','pennyeast@gmail.com',2,'Jet'),
....;
````
An important thing to remember when using the INSERT INTO statement is the data types and constrainsts set earlier. You must make sure values are matched up and don't violate any parameters. For example, in the 3rd column EMAIL we set a variable character limit of 50. Any email addresses longer than this would return an error.


### Inserting values into classroom table

````sql
INSERT INTO classroom (classroom_name)
VALUES ('Jet'), ('Lilac'), ('Silver');
````
Last but not least, although all 3 tables contained a table with _id, we haven't seen it in any of the INSERT INTO statements.
This is because we specified it to be a primary key and the SERIAL datatype automatically assigns values to this column.
