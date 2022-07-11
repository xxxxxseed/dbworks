-- �μ��� ��� ���̺� ����
CREATE TABLE department(
    deptid      NUMBER,                 -- �μ���ȣ
    deptname    VARCHAR2(20) NOT NULL,  -- �μ��̸�
    location    VARCHAR2(20) NOT NULL,  -- �繫�� ��ġ
    PRIMARY KEY(deptid)
);

CREATE TABLE employee(
    empid       NUMBER(3) PRIMARY KEY,  -- ��� ���̵�
    empname     VARCHAR2(20) NOT NULL,  -- ��� �̸�
    age         NUMBER(3),              -- ����
    deptid      NUMBER,                 -- �μ���ȣ(�ܷ�Ű) ���� - 1�� ��
    CONSTRAINT EMP_RK FOREIGN KEY(deptid) 
    REFERENCES department(deptid)       -- �ܷ�Ű ��������
);

-- �μ� �ڷ� �߰�
INSERT INTO department VALUES (10, '������', '����');
INSERT INTO department VALUES (20, '�ѹ���', '��õ');

-- ��� �ڷ� �߰�
INSERT INTO employee VALUES (101, '�̰�', 27, 10);
INSERT INTO employee VALUES (102, '���', 28, 20);
INSERT INTO employee VALUES (103, '����', 35, 30);    -- �μ� �ڵ� ����, ����

-- �μ� ����
DELETE FROM department WHERE deptid = 10;

-- �ܷ�Ű ���� ���� ����
ALTER TABLE employee DROP CONSTRAINT EMP_RK;

-- �ڷ� �˻�
SELECT * FROM department;
SELECT * FROM employee;

COMMIT;
