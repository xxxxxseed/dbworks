CREATE TABLE employee(
    empid   NUMBER(5) PRIMARY KEY,
    name    VARCHAR2(20) NOT NULL,
    phone   VARCHAR2(15) NOT NULL,
    hiredate    DATE NOT NULL
);

DESC employee;

INSERT INTO employee VALUES (1, '우영우', '010-1234-5252', TO_DATE('2022-08-10', 'YYYY-MM-DD'));
INSERT INTO employee VALUES (2, '정명석', '010-1234-5678', TO_DATE('2022-08-10', 'YYYY-MM-DD'));
INSERT INTO employee VALUES (3, '최수연', '010-1234-1234', TO_DATE('2022-08-10', 'YYYY-MM-DD'));

-- 자료 삭제시 오류
DELETE FROM employee WHERE empid=2;

SELECT * FROM employee;

CREATE TABLE job_history(
    jobid       VARCHAR2(10) PRIMARY KEY,
    jobtitle    VARCHAR2(20) NOT NULL,
    startdate   DATE NOT NULL,
    enddate     DATE NOT NULL,
    empid       NUMBER(5) NOT NULL,
    CONSTRAINT FK_emp_job FOREIGN KEY(empid) REFERENCES employee(empid)
);

DESC job_history;
INSERT INTO job_history VALUES ('IT_PROG', '웹_프로그래머', TO_DATE('2000-01-01', 'YYYY-MM-DD'), TO_DATE('2009-12-31', 'YYYY-MM-DD'), 2);
INSERT INTO job_history VALUES ('LAWYER', '변호사', TO_DATE('2010-01-01', 'YYYY-MM-DD'), TO_DATE('2021-12-31', 'YYYY-MM-DD'), 2);
INSERT INTO job_history VALUES ('FARMER', '농부', TO_DATE('2022-01-01', 'YYYY-MM-DD'), TO_DATE('2022-08-10', 'YYYY-MM-DD'), 2);

-- 자료 삽입시 오류
INSERT INTO job_history VALUES ('LAWYER', '변호사', TO_DATE('2010-01-01', 'YYYY-MM-DD'), TO_DATE('2021-12-31', 'YYYY-MM-DD'), 4);

SELECT * FROM job_history ORDER BY startdate;