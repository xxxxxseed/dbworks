-- dbcp �׽�Ʈ�� table ����
CREATE TABLE dbcp_test(
    name    VARCHAR2(20) NOT NULL,
    email   VARCHAR2(30) PRIMARY KEY
);

INSERT INTO dbcp_test VALUES ('���ϴ�', 'sky@test.com');

SELECT * FROM dbcp_test;
DELETE FROM dbcp_test;

ROLLBACK;   -- Ŀ�� ���� �ǵ����� ����

COMMIT;