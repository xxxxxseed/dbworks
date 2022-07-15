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

-- ��¥, �ð� �Լ�
-- ������ �ֹ��Ϸκ��� 10�� �� ������ Ȯ���Ѵ�. �� �ֹ��� Ȯ�����ڸ� ���Ͻÿ�
-- ��¥���� �ϼ��� ���Ҷ� : date + �ϼ�
SELECT orderid          �ֹ���ȣ, 
       orderdate        �ֹ���,
       orderdate + 10   Ȯ��
FROM orders
WHERE orderid <= 5;

-- �ֹ���ȣ�� 6���� 10������ ������ �ֹ��Ͽ� 3������ ���� ���� ���Ͻÿ�
-- ���� ���ϱ� : ADD_MONTHS()
SELECT orderid �ֹ���ȣ, orderdate �ֹ���,
       ADD_MONTHS(orderdate, 3) ���ϱ�_���,
       ADD_MONTHS(orderdate, -3) ����_���
FROM orders
WHERE orderid BETWEEN 6 AND 10;

-- �� ������: MONTHS_BETWEEN(������, ������)
-- �ֹ���ȣ�� 10�� ������ �ֹ��Ϸκ��� ���ñ����� �� �������� ���Ͻÿ�
SELECT orderid �ֹ���ȣ, orderdate �ֹ���, SYSDATE ������,
       TRUNC(MONTHS_BETWEEN(SYSDATE, orderdate), 0) �Ѱ�����
FROM orders
WHERE orderid = 10;

-- �ڵ� Ÿ�� ��ȯ
-- ����
SELECT 1 + '5' / '2'
FROM dual;

-- ���� Ÿ�� ��ȯ
-- ���� ���� ��ȯ(���ڸ� ���ڷ� ��ȯ)
SELECT TO_NUMBER('250.3')
FROM dual;

-- ��¥ ���� : ��¥ ���ڿ��� ���� ������ ��¥ Ÿ������ ��ȯ
-- TO_DATE(���ڿ�, ��¥����)
SELECT TO_DATE('2022/06/30', 'YYYY/MM/DD'),
       TO_DATE('2022-06-30', 'YYYY-MM-DD')
FROM dual;

-- ��¥�� ���� �������� ��ȯ
-- TO_CHAR(��¥, ��¥����)
SELECT TO_CHAR(SYSDATE, 'YY') �⵵,
       TO_CHAR(SYSDATE, 'YYYY') �⵵_4,
       TO_CHAR(SYSDATE, 'MM') ��,
       TO_CHAR(SYSDATE, 'DD') ��,
       TO_CHAR(SYSDATE, 'YYYY-MM-DD') ��¥
FROM dual;

-- �ð��� ���� �������� ��ȯ
SELECT TO_CHAR(SYSDATE, 'HH24:MI:SS') �ð�_24,
       TO_CHAR(SYSDATE, 'HH:MI:SS') �ð�_12,
       TO_CHAR(SYSDATE, 'YYYY-MM-DD HH:MI:SS') ��¥�ͽð�
FROM dual;

-- NVL(Į��, ġȯ��)�Լ��� NULL ó���ϱ�
SELECT custid, name, address,
       NVL(phone, '000-9000-111') phone
FROM customer
WHERE phone IS NULL;


