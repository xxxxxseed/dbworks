-- New User ���鶧 system���� �۾�
-- user - c##spring ����, ��й�ȣ - spring

CREATE USER c##spring IDENTIFIED BY spring
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;

-- ���� ����
GRANT CONNECT, DBA TO c##spring;