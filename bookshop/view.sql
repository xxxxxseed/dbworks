-- ��(VIEW)
-- �ϳ� �̻��� ���̺��� ���Ͽ� ���� ������ ���̺�ν� ����
-- ���̺�ó�� ����� �� �ִ� �����ͺ��̽� ��ü�̴�.
-- ������� - �ʿ��� ����ڿ��� ������ �����͸� ����(����)

-- �ּҿ� '���ѹα�'�� �����ϴ� ����� ������ �並 ���弼��.
CREATE VIEW vw_Customer
AS SELECT * 
   FROM     customer
   WHERE    address LIKE '%���ѹα�%';
   
-- ���̸����� �˻�
SELECT *
FROM vw_Customer;

-- ���� �̸��� �ֹ� ������ �̸��� ������ �˻��Ͻÿ�
CREATE VIEW vw_Orders AS
SELECT customer.name, book.bookname, orders.saleprice
FROM customer, orders, book
WHERE customer.custid = orders.custid
AND book.bookid = orders.bookid;

-- �� �˻�
SELECT *
FROM vw_Orders;

-- �� ����
DROP VIEW vw_Orders;

