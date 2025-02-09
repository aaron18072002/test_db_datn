CREATE TABLE T06_COURSE
( 
    C06_COURSE_ID VARCHAR(50) PRIMARY KEY, 
    C06_COURSE_NAME VARCHAR(255) NOT NULL, 
    C06_COURSE_DESCRIPTION TEXT 
);

CREATE TABLE T07_SUBJECT
( 
    C07_SUBJECT_ID VARCHAR(50) PRIMARY KEY, 
    C07_SUBJECT_NAME VARCHAR(255) NOT NULL, 
    C07_SUBJECT_COST DECIMAL(12,2) NOT NULL
);

CREATE TABLE T08_SEMESTER
( 
    C08_SEMESTER_ID VARCHAR(20) PRIMARY KEY, -- HK[năm][kì] 
    C08_SEMESTER_NAME VARCHAR(100) NOT NULL, 
    C08_START_DATE DATE NOT NULL, 
    C08_END_DATE DATE NOT NULL
);

CREATE TABLE T09_COURSE_SUBJECT
( 
    C09_COURSE_ID VARCHAR(50) NOT NULL, 
    C09_SUBJECT_ID VARCHAR(50) NOT NULL, 
    PRIMARY KEY (C09_COURSE_ID, C09_SUBJECT_ID), 
    FOREIGN KEY FK_T09_T06 (C09_COURSE_ID) REFERENCES T06_COURSE(C06_COURSE_ID) ON DELETE CASCADE ON UPDATE CASCADE, 
    FOREIGN KEY FK_T09_T07 (C09_SUBJECT_ID) REFERENCES T07_SUBJECT(C07_SUBJECT_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE T10_SEMESTER_SUBJECT
( 
    C10_SEMESTER_ID VARCHAR(50) NOT NULL, 
    C10_SUBJECT_ID VARCHAR(50) NOT NULL, 
    PRIMARY KEY (C10_SEMESTER_ID, C10_SUBJECT_ID), 
    FOREIGN KEY FK_T10_T08 (C10_SEMESTER_ID) REFERENCES T08_SEMESTER(C08_SEMESTER_ID) ON DELETE CASCADE ON UPDATE CASCADE, 
    FOREIGN KEY FK_T10_T07 (C10_SUBJECT_ID) REFERENCES T07_SUBJECT(C07_SUBJECT_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE T11_STUDENT_SUBJECT
( 
    C11_STUDENT_ID INT NOT NULL, 
    C11_SUBJECT_ID VARCHAR(50) NOT NULL, 
    C11_SUBJECT_COST_AT_ENROLL DECIMAL(12,2) NOT NULL, 
    C11_ENROLLMENT_DATE DATETIME DEFAULT CURRENT_TIMESTAMP, 
    PRIMARY KEY (C11_STUDENT_ID, C11_SUBJECT_ID), 
    FOREIGN KEY FK_T11_T02 (C11_STUDENT_ID) REFERENCES T02_USER(C02_USER_ID) ON DELETE CASCADE ON UPDATE CASCADE, 
    FOREIGN KEY FK_T11_T07 (C11_SUBJECT_ID) REFERENCES T07_SUBJECT(C07_SUBJECT_ID) ON DELETE CASCADE ON UPDATE CASCADE
);