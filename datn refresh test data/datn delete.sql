-- Truncate bảng phụ thuộc trước (bảng chứa khóa ngoại)
TRUNCATE TABLE T11_STUDENT_SUBJECT;

TRUNCATE TABLE T10_SEMESTER_SUBJECT;

TRUNCATE TABLE T09_COURSE_SUBJECT;

-- Truncate bảng chính sau (bảng không chứa khóa ngoại hoặc không bị khóa ngoại chi phối)
TRUNCATE TABLE T08_SEMESTER;

TRUNCATE TABLE T07_SUBJECT;

TRUNCATE TABLE T06_COURSE;

TRUNCATE TABLE T05_ADMIN;

TRUNCATE TABLE T04_TEACHER;

TRUNCATE TABLE T03_STUDENTS;

TRUNCATE TABLE T02_USER;

TRUNCATE TABLE T01_USER_TYPE;