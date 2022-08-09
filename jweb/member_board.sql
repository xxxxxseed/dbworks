
-- ȸ�� ���̺� ����
CREATE TABLE t_member(
    memberid    VARCHAR2(20) PRIMARY KEY,
    passwd      VARCHAR2(20) NOT NULL,
    name        VARCHAR2(30) NOT NULL,
    gender      VARCHAR2(10),
    joindate    DATE DEFAULT SYSDATE
);

CREATE TABLE t_board(
    bnum    NUMBER(4) PRIMARY KEY,
    title   VARCHAR2(100) NOT NULL,
    content VARCHAR2(2000) NOT NULL,
    regdate DATE DEFAULT SYSDATE,
    memberId    VARCHAR2(20),
    CONSTRAINT FK_MemberBoard FOREIGN KEY (memberId)
    REFERENCES t_member(memberId)
);

-- ������ ����
CREATE SEQUENCE b_seq;

INSERT INTO t_member VALUES ('sky', 'm12345', '���ϴ�', '��', SYSDATE);
INSERT INTO t_board 
VALUES (b_seq.nextval, '�����Դϴ�', '�� �����Դϴ�', SYSDATE, 'cloudy');

SELECT * FROM t_member;
SELECT * FROM t_board;
DELETE FROM t_board WHERE bnum=25;

DESC t_member;