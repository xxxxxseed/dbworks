-- spring ������Ʈ ���
CREATE TABLE tbl_board(
    bno     NUMBER(5),
    title   VARCHAR2(200) NOT NULL,
    writer  VARCHAR2(20) NOT NULL,
    content VARCHAR2(2000) NOT NULL,
    regdate DATE DEFAULT SYSDATE,
    updatedate DATE DEFAULT SYSDATE,
    cnt     NUMBER(5) DEFAULT 0
);
-- �⺻Ű ���� ���� ����
ALTER TABLE tbl_board ADD CONSTRAINT pk_board
PRIMARY KEY(bno);

-- �ڵ� ��ȣ
CREATE SEQUENCE seq;

CREATE TABLE tbl_user(
    id      VARCHAR2(8) PRIMARY KEY,
    passwd  VARCHAR2(8) NOT NULL,
    name    VARCHAR2(20) NOT NULL,
    role    VARCHAR2(5)
);

-- ���� ������
INSERT INTO tbl_board (bno, title, writer, content)
VALUES (seq.NEXTVAL, '�׽�Ʈ����', 'user00', '�׽�Ʈ �����Դϴ�');

-- ��� ����
INSERT INTO tbl_board (bno, title, writer, content)
SELECT seq.NEXTVAL, title, writer, content
FROM tbl_board;

-- �Խñ� �߰�
INSERT INTO tbl_board(bno, title, writer, content)
VALUES (seq.NEXTVAL, '�����λ�', '������', '�� ��Ź�帳�ϴ�.');

-- ȸ�� �߰�
INSERT INTO tbl_user
VALUES ('test', 'test123', '������', 'Admin');
INSERT INTO tbl_user
VALUES ('user1', 'user123', '��׷�', 'User');

-- bno�� �����Ǹ� ��ȣ�� �߰����� �����
-- ROWNUM ���� Į���� �ƴ�����(VIEW) ����(����) �����͸� ī��Ʈ�Ͽ� �������

SELECT ROWNUM, bno, title, writer, content FROM tbl_board 
ORDER BY bno DESC;

-- �ε���(INDEX)�� �����ϱ�
-- ��Ʈ �ֱ�
SELECT /*+ INDEX_DESC(tbl_board pk_board) */
    ROWNUM, bno, title, writer, content
FROM tbl_board;

-- 1������ ��������
SELECT /*+ INDEX_DESC(tbl_board pk_board) */
    ROWNUM, bno, title, writer, content
FROM tbl_board
WHERE ROWNUM <= 10;

-- 2������ ������ �� ����(0���� ũ�� �����ؾ߸� �����ü� ����)
SELECT /*+ INDEX_DESC(tbl_board pk_board) */
    ROWNUM, bno, title, writer, content
FROM tbl_board
WHERE ROWNUM > 0 AND ROWNUM <= 20;

-- ���� ����(�ζ��� ��)
-- ROWNUM�� Ű�����̹Ƿ� ��Ī ���
SELECT * FROM
(
    SELECT /*+ INDEX_DESC(tbl_board pk_board) */
    ROWNUM rn, bno, title, writer, content
    FROM tbl_board
    WHERE ROWNUM <= 20
)
WHERE rn > 0;

-- ������ ó�� SQL
-- 2�������� ���
SELECT * FROM
(
    SELECT /*+ INDEX_DESC(tbl_board pk_board) */
    ROWNUM rn, bno, title, writer, content, regdate, updatedate, cnt
    FROM tbl_board
    WHERE ROWNUM <= (2 * 10)
)
WHERE rn > (2 - 1) * 10;


SELECT * FROM tbl_board ORDER BY bno DESC;
SELECT * FROM tbl_user;

DELETE FROM tbl_board WHERE bno=42;

DROP TABLE tbl_board;
DROP SEQUENCE seq;

COMMIT;