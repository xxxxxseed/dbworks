-- t_address ���̺� ����
CREATE TABLE t_address(
    num         NUMBER(4),
    username    VARCHAR2(20),
    tel         VARCHAR2(20) NOT NULL,
    email       VARCHAR2(30) NOT NULL,
    gender      VARCHAR2(6),
    joinDate    DATE DEFAULT SYSDATE,
    PRIMARY KEY(num)
);

-- �Ϸù�ȣ(������) ����
CREATE SEQUENCE ab_seq
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000
NOCYCLE
NOCACHE;

-- �ڷ� �߰�
INSERT INTO t_address(num, username, tel, email, gender, joinDate)
VALUES (ab_seq.nextval, '�׽�Ʈ', '010-1234-5678', 'test@hi.com', '��', SYSDATE);

COMMIT;
SELECT * FROM t_address ORDER BY num;
DELETE FROM t_address;  -- ��ü ������ ����
DROP SEQUENCE ab_seq;   -- ������ ����