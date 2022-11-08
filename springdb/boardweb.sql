-- ����Ͻ� ������Ʈ(BoardWeb) board ���̺�
CREATE TABLE board(
    bno     NUMBER(5) PRIMARY KEY,
    title   VARCHAR2(200),
    writer  VARCHAR2(20),
    content VARCHAR2(2000),
    regdate DATE DEFAULT SYSDATE,
    cnt     NUMBER(5) DEFAULT 0
);

-- �ڵ� ��ȣ
CREATE SEQUENCE seq;

-- users ���̺� ����
CREATE TABLE users(
    id      VARCHAR2(8) PRIMARY KEY,
    passwd  VARCHAR2(8) NOT NULL,
    name    VARCHAR2(20) NOT NULL,
    role    VARCHAR2(5)
);

-- �Խñ� �߰�
INSERT INTO board(bno, title, writer, content)
VALUES (seq.NEXTVAL, '�����λ�', '������', '�� ��Ź�帳�ϴ�.');

-- ȸ�� �߰�
INSERT INTO users
VALUES ('test', 'test123', '������', 'Admin');
INSERT INTO users
VALUES ('user1', 'user123', '��׷�', 'User');

select * from board ORDER BY bno DESC;
select * from users;

DELETE FROM board WHERE bno=15;

COMMIT;
