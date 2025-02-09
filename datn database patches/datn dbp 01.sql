CREATE DATABASE IF NOT EXISTS datn;

USE datn;

CREATE TABLE T01_USER_TYPE (
    C01_USER_TYPE_ID VARCHAR(10) PRIMARY KEY NOT NULL, 
    C01_USER_TYPE_NAME VARCHAR(150)
);

CREATE TABLE T02_USER (
    C02_USER_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    C02_GENDER VARCHAR(10) NOT NULL, 
    C02_DATE_OF_BIRTH DATE NOT NULL, 
    C02_FIRST_NAME VARCHAR(100) NOT NULL, 
    C02_LAST_NAME VARCHAR(100) NOT NULL,  
    C02_ADDRESS VARCHAR(200), 
    C02_EMAIL VARCHAR(150) UNIQUE,
    C02_PHONE CHAR(10) UNIQUE,
    C02_USER_TYPE_ID VARCHAR(10),
    CONSTRAINT UNQ_C02_USER UNIQUE(C02_EMAIL, C02_PHONE),
    CONSTRAINT FK_C02_C01 FOREIGN KEY (C02_USER_TYPE_ID) REFERENCES T01_USER_TYPE(C01_USER_TYPE_ID)
);

CREATE TABLE T03_STUDENTS
( 
    C03_STUDENT_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    C03_ENROLLMENT_DATE DATE DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (C03_USER_ID) REFERENCES T02_USER(C02_USER_ID) ON DELETE CASCADE
);

CREATE TABLE T03_STUDENTS
( 
    C03_STUDENT_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    C03_ENROLLMENT_DATE DATE DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (C03_USER_ID) REFERENCES T02_USER(C02_USER_ID) ON DELETE CASCADE
);

CREATE TABLE T05_ADMIN (
    C05_ADMIN_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    C05_LEVEL INT NOT NULL,
    CONSTRAINT C05_ADMIN_LEVEL_CHECK CHECK (C05_LEVEL IN (1, 2, 3, 4, 5)),
    FOREIGN KEY (C05_ADMIN_ID) REFERENCES T02_USER(C02_USER_ID) ON DELETE CASCADE
);




