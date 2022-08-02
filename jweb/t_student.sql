-- 학생 테이블 생성
CREATE TABLE t_student(
    stdid     NUMBER(3) PRIMARY KEY,
    stdname   VARCHAR2(20) NOT NULL
);

DESCRIBE t_student;

INSERT INTO t_student(stdid, stdname) VALUES (101, '이강');

COMMIT;

SELECT * FROM t_student ORDER BY stdid;