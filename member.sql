-- ex4 ���̺� ����
CREATE TABLE ex4(
    userId      VARCHAR2(10) PRIMARY KEY,   --�⺻Ű ����
    passwd      VARCHAR2(10) NOT NULL
);

-- ���̺� �̸� ����
ALTER TABLE ex4 RENAME TO member;

-- ������ Į�� �߰�
ALTER TABLE member ADD regDate DATE;

-- �Ի��� Į�� �߰�
ALTER TABLE member ADD hireDate VARCHAR2(20);

-- �Ի��� Į�� ����
ALTER TABLE member MODIFY hireDate VARCHAR2(30);

-- �޿� Į�� �߰�
ALTER TABLE member ADD salary NUMBER;

-- ������ ����
INSERT INTO member (userId, passwd, regDate, salary, hireDate) 
VALUES ('cloud2023', 'abcd1234', SYSDATE, 1000000, '2022/06/09');

-- ������ ���� (UPDATE ���̺�� SET Į����=�� WHERE ����;
UPDATE member SET salary = 3000000 WHERE userId = 'sky2022';
UPDATE member SET salary = 1000000 WHERE userId = 'river2022';

-- userId�� sky2022�� ����ϰ� �޿� ������ �����ϱ�
UPDATE member SET regDate = SYSDATE, salary = 1000000 WHERE userId = 'sky2022';

-- ������ ����(��ü ������ ����)
DELETE FROM member;

-- ������ 1�� ����
DELETE FROM member WHERE userId = 'river2022';

-- ������ ��ȸ
SELECT * FROM member;

-- ������ ��ȸ(�������� ����, DESC - ��������)
SELECT * FROM member ORDER BY salary DESC;

-- Ư�� ������ ��ȸ (SELECT Į���� FROM ���̺�� WHERE ����)
SELECT regDate FROM member WHERE userId = 'river2022';

-- ���̺� ����
CREATE TABLE member2 AS
SELECT * FROM member;

-- ���̺� ����
DROP TABLE member2;

-- Ŀ�� ����
COMMIT;

-- �ѹ� ����
ROLLBACK;

-- ���̺��� ����
DESC member;