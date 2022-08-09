-- dbcp 테스트용 table 생성
CREATE TABLE dbcp_test(
    name    VARCHAR2(20) NOT NULL,
    email   VARCHAR2(30) PRIMARY KEY
);

INSERT INTO dbcp_test VALUES ('강하늘', 'sky@test.com');

SELECT * FROM dbcp_test;
DELETE FROM dbcp_test;

ROLLBACK;   -- 커밋 전에 되돌리기 가능

COMMIT;