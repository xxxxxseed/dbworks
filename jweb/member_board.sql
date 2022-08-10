
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

-- hit Į�� �߰�
ALTER TABLE t_board ADD hit NUMBER;

-- �ܷ�Ű �������� ����
ALTER TABLE t_board DROP CONSTRAINT FK_MemberBoard;

-- �ܷ�Ű �������� �缳��
ALTER TABLE t_board ADD CONSTRAINT FK_MemberBoard FOREIGN KEY (memberId)
REFERENCES t_member(memberId) ON DELETE CASCADE;

INSERT INTO t_member VALUES ('sky', 'm12345', '���ϴ�', '��', SYSDATE);
INSERT INTO t_board 
VALUES (b_seq.nextval, '�����Դϴ�', '�� �����Դϴ�', SYSDATE, 'cloudy');

SELECT * FROM t_member;
SELECT * FROM t_board;
DELETE FROM t_board WHERE bnum=3;

DESC t_member;