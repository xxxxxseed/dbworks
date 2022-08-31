-- ���� : 1�� �̻��� ���̺��� ����
-- ���� ���� : ���� ������ ��Ȯ�� ��ġ�ϴ� ��쿡 ����� ���
-- ���� ���� �ֹ��� ���� �����͸� ��� �˻��Ͻÿ�
SELECT *
FROM customer, orders
WHERE customer.custid = orders.custid;

-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� �˻��Ͻÿ�
SELECT customer.name, orders.saleprice
FROM customer, orders
WHERE customer.custid = orders.custid;

-- '�Ȼ�' ���� �ֹ������� �˻��Ͻÿ�
SELECT *
FROM customer, orders
WHERE customer.custid = orders.custid
AND customer.name = '�Ȼ�';

-- ������ �ֹ��� ��� ������ �� �Ǹž��� ���ϰ�, ������ �����Ͻÿ�
SELECT customer.name, SUM(saleprice) AS ���Ǹž�
FROM customer, orders
WHERE customer.custid = orders.custid
GROUP BY customer.name
ORDER BY customer.name;

-- ���� �̸��� �ֹ��� ������ �̸� �� ������ �˻��Ͻÿ�
SELECT customer.name, book.bookname, orders.saleprice
FROM customer, orders, book
WHERE customer.custid = orders.custid
AND book.bookid = orders.bookid;

-- ������ 20000���� ������ �ֹ��� ���� �̸��� ������ �̸��� �˻��Ͻÿ�
SELECT customer.name, book.bookname, orders.saleprice
FROM customer, orders, book
WHERE customer.custid = orders.custid
AND book.bookid = orders.bookid
AND book.price = 20000;

-- �ܺ� ����(outer join) : ���� ������ ��Ȯ�� ��ġ���� �ʾƵ� ��� ����� ���
-- ������ �������� ���� ���� �����Ͽ�
-- ���� �̸��� ���� �ֹ��� ������ �Ǹ� ������ ���Ͻÿ�
SELECT customer.name, orders.saleprice
FROM customer 
    LEFT OUTER JOIN orders
    ON customer.custid = orders.custid;
    
SELECT *
FROM customer ,orders
WHERE customer.custid(+) = orders.custid;

-- (INER) JOIN : ������ ��ġ�ϴ� ������ ����� ��� 
SELECT customer.name, orders.saleprice
FROM customer 
    LEFT JOIN orders
    ON customer.custid = orders.custid;
