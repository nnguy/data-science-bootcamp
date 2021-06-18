/*Always start your database with these two lines*/

CREATE DATABASE hogwarts_employees; 
USE hogwarts_employees; 

/*Always start your databases with these two lines */


CREATE TABLE Employee (
	EMPLOYEE_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO employee 
	(EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Neville', 'Longbottom', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Ronald', 'Weasley', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Hermoine', 'Granger', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Harry', 'Potter', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Severus', 'Snape', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Luna', 'Lovegood', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Draco', 'Malfoy', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Minerva', 'Mcgonagall', 90000, '14-04-11 09.00.00', 'Admin');

CREATE TABLE Bonus (
	EMPLOYEE_REF_ID INT,
	BONUS_AMOUNT INT(10),
	BONUS_DATE DATETIME,
	FOREIGN KEY (EMPLOYEE_REF_ID)
		REFERENCES Employee(EMPLOYEE_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
	(EMPLOYEE_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '16-02-20'),
		(002, 3000, '16-06-11'),
		(003, 4000, '16-02-20'),
		(001, 4500, '16-02-20'),
		(002, 3500, '16-06-11');

CREATE TABLE Title (
	EMPLOYEE_REF_ID INT,
	EMPLOYEE_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (EMPLOYEE_REF_ID)
		REFERENCES Employee(EMPLOYEE_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(EMPLOYEE_REF_ID, EMPLOYEE_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20 00:00:00'),
 (002, 'Executive', '2016-06-11 00:00:00'),
 (008, 'Executive', '2016-06-11 00:00:00'),
 (005, 'Manager', '2016-06-11 00:00:00'),
 (004, 'Assistant Manager', '2016-06-11 00:00:00'),
 (007, 'Executive', '2016-06-11 00:00:00'),
 (006, 'Lead', '2016-06-11 00:00:00'),
 (003, 'Lead', '2016-06-11 00:00:00');