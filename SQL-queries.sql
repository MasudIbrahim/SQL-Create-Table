-- Creating student table
CREATE TABLE student (
student_id serial PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE NOT NULL,
homeroom_number SMALLINT NOT NULL	
);

-- Creating teacher table
CREATE TABLE teacher(
teacher_id SERIAL PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE NOT NULL,
homeroom_number SMALLINT NOT NULL,
clasroom_name VARCHAR(10) NOT NULL	
);

-- Creating classroom table
CREATE TABLE classroom(
clasroom_id SERIAL PRIMARY KEY,
classroom_name VARCHAR(10) UNIQUE NOT NULL				   
);

-- Inserting values into student table
INSERT INTO student (first_name,last_name,email,homeroom_number)
VALUES ('Jack','Ryan','jackryan@gmail.com',1),
('Melissa','Butler','MelissaButler@gmail.com',2),
('Stacy','Dean','stacydean@gmail.com',2),
('Mark','Fisher','markfisher@gmail.com',1),
('Lindsay','Graham','lindsaygraham@gmail.com',1),
('Alexis','Miller','alexismiller@gmail.com',2),
('Harry','Hall','harryhall@gmail.com',1),
('Terry','Crews','terrycrews@gmail.com',2),
('Violet','Stone','violetstone@gmail.com',1),
('Charles','Goodman','charlesgoodman@gmail.com',2)
;

-- Inserting values into teacher table
INSERT INTO teacher(first_name,last_name,email,homeroom_number,classroom_name)
VALUES
('Penny','East','pennyeast@gmail.com',2,'Jet'),
('Sarah','Thorpe','sarahthorpe@gmail.com',1,'Lilac'),
('Rebecca','Ward','rebeccaward@gmail.com',2,'Jet'),
('Mike','Hunter','mikehunter@gmail.com',1,'Lilac'),
('Jill','Brooks','jillbrooks@gmail.com',1,'Silver'),
('Billy','Ferguson','billyferguson@gmail.com',2,'Silver'),
('Erik','Parker','erikparker@gmail.com',1,'Jet'),
('Emma','Hayes','emmahayes@gmail.com',2,'Silver'),
('Fred','Southwell','fredsouthwellgmail.com',2,'Lilac'),
('Katherine','Fox','katherinefox@gmail.com',1,'Jet')
;

-- Inserting values into classroom table
INSERT INTO classroom (classroom_name)
VALUES ('Jet'), ('Lilac'), ('Silver');