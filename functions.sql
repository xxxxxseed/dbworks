-- ���� �Լ� - �Լ��̸�(�Ű�����)
-- ���� ���� �Լ�
-- dual�� ����Ŭ���� ����ϴ� ���� ���̺���
-- ���밪 ���ϱ�
SELECT ABS(-10)
FROM dual;

-- 3.875�� �Ҽ� ù°�ڸ����� �ݿø��� ���� ���Ͻÿ�
SELECT ROUND(3.876, 1) ���1,     -- �Ҽ� ù°�ڸ�
       ROUND(3.876, 0) ���2,     -- ����
       ROUND(16.876, -1) ���3,    -- ���� �ڸ�
       ROUND(516.876, -2) ���4    -- ���� �ڸ�
FROM dual;

-- salary�� 30�Ϸ� ���� �� �Ҽ� �ڸ����� ���� ����(����)�� �� ���
SELECT salary,
       salary/30 �ϱ�,
       TRUNC(salary/30, 1) ���1,
       TRUNC(salary/30, 0) ���2,
       TRUNC(salary/30, -1) ���3,
       TRUNC(salary/30, -2) ���4
FROM employee;

-- ���� ��� �ֹ� �ݾ��� ��� ������ �ݿø��� ���� ���Ͻÿ�
SELECT custid ����ȣ,
       ROUND(AVG(saleprice), -2) ��ձݾ�
FROM orders
GROUP BY custid;

-- ���� ���� �Լ�
SELECT LPAD('cloud', 10, '*') FROM dual;
SELECT RPAD('cloud', 10, '*') FROM dual;

-- �μ� �̸����� ó������ �����ؼ� �� ���� ���� ���
-- SUBSTR(Į����, �����ε���, ���ڼ�)
SELECT SUBSTR(deptname, 1, 2) ����
FROM department;

-- ���� ���� �߱��� ���Ե� ������ �󱸷� �����Ͽ� �˻��Ͻÿ�
SELECT bookid,
       REPLACE(bookname, '�߱�', '��') bookname
FROM book;

-- �½��������� ������ ������ ����� ���ڼ��� �˻��Ͻÿ�
SELECT bookname ����,
       LENGTH(bookname) ���ڼ�
FROM book
WHERE publisher = '�½�����';

-- �� �̸����� ���� ���� ���� ����� �ο��� ���Ͻÿ�.
-- GROUP BY���� �Լ��� ������ �� ����
SELECT SUBSTR(name, 1, 1) ��,
       COUNT(*) �ο�
FROM customer
GROUP BY SUBSTR(name, 1, 1);


