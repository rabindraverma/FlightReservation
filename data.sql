create database flights
use flights

CREATE TABLE USER
(
ID INT NOT NULL AUTO_INCREMENT,
FIRST_NAME VARCHAR(50),
LAST_NAME VARCHAR(50),
EMAIL VARCHAR(55),
PASSWORD VARCHAR(256),
PRIMARY KEY(ID),
UNIQUE KEY(EMAIL)
)

drop table user
SELECT * FROM USER

CREATE TABLE FLIGHT
(
ID INT NOT NULL AUTO_INCREMENT,
FLIGHT_NUMBER VARCHAR(20) NOT NULL,
OPERATING_AIRLINES VARCHAR(20) NOT NULL,
DEPARTURE_CITY VARCHAR(20) NOT NULL,
ARRIVAL_CITY VARCHAR(20) NOT NULL,
DATE_OF_DEPARTURE DATE NOT NULL,
ESTIMATED_DEPARTURE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY(ID)
)
SELECT * FROM FLIGHT

CREATE TABLE PASSENGER
(
ID INT NOT NULL AUTO_INCREMENT,
FIRST_NAME VARCHAR(256),
LAST_NAME VARCHAR(256),
MIDDLE_NAME VARCHAR(256),
EMAIL VARCHAR(50),
PHONE VARCHAR(10),
PRIMARY KEY(ID)
)
SELECT * FROM PASSENGER

CREATE TABLE RESERVATION
(
ID INT NOT NULL AUTO_INCREMENT,
CHECKED_IN TINYINT(1),
NUMBER_OF_BAGS INT,
PASSENGER_ID INT,
FLIGHT_ID INT,
CREATED TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (ID),
FOREIGN KEY(PASSENGER_ID) REFERENCES PASSENGER(ID) ON DELETE CASCADE,
FOREIGN KEY(FLIGHT_ID) REFERENCES FLIGHT(ID)
) 
SELECT * FROM RESERVATION

insert into flight values(
1,
'AA1',
'American Airlines',
'AUS',
'NYC',
str_to_date('02-05-2018','%d-%m-%Y'),
'2018-02-05 03:14:07'
)
insert into flight values(
2,'AA2','American Airlines','AUS','NYC',
str_to_date('02-05-2018','%d-%m-%Y'),'2018-02-05 05:14:07')
insert into flight values(
3,'AA3','American Airlines','AUS','NYC',
str_to_date('02-05-2018','%d-%m-%Y'),'2018-02-05 06:14:07')
insert into flight values(
4,'SW1','South West','AUS','NYC',
str_to_date('02-05-2018','%d-%m-%Y'),'2018-02-05 07:14:07')
insert into flight values(
5,'UA1','United Airlines','NYC','DAL',
str_to_date('02-05-2018','%d-%m-%Y'),'2018-02-05 10:14:07')
insert into flight values(
6,'UA1','United Airlines','NYC','DAL',
str_to_date('02-05-2018','%d-%m-%Y'),'2018-02-05 10:14:07')
insert into flight values(
7,'SW1','South West','AUS','NYC',
str_to_date('02-06-2018','%d-%m-%Y'),'2018-02-06 07:14:07')
insert into flight values(
8,'SW2','South West','AUS','NYC',
str_to_date('02-06-2018','%d-%m-%Y'),'2018-02-06 08:14:07')
insert into flight values(
9,'SW3','South West','NYC','DAL',
str_to_date('02-06-2018','%d-%m-%Y'),'2018-02-06 10:14:07')
insert into flight values(
10,'UA1','United Airlines','NYC','DAL',
str_to_date('02-06-2018','%d-%m-%Y'),'2018-02-06 10:14:07')
