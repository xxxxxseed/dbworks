-- ��������(�μ� ����)
-- WHERE ������ ���
-- ���� ��� ������ �̸��� �˻��Ͻÿ�
SELECT bookname, price
FROM book
WHERE price = (SELECT MAX(price) FROM book);

-- ������ ������ ���� ���� ���� �̸��� �˻��Ͻÿ�
SELECT custid FROM orders;

SELECT name
FROM customer
WHERE custid NOT IN(SELECT custid 
                FROM orders);
                
-- ������ ���� �ֹ������� �˻��Ͻÿ�
SELECT *
FROM orders
WHERE custid IN (SELECT custid
                FROM customer
                WHERE name = '������');

-- �̻� �̵��� ������ ������ ������ ���� �̸��� �˻��Ͻÿ�
SELECT name
FROM customer
WHERE custid IN (SELECT custid
                FROM orders
                WHERE bookid IN(SELECT bookid
                                FROM book
                                WHERE publisher = '�̻�̵��'));
                                
-- ���ǻ纰�� ���ǻ��� ��� ���� ���ݺ��� ��� ������ �˻��Ͻÿ�
-- Ʃ�� ���� : ���̺��� �̸��� ��Ī
-- ��ü ���� : ��ü ������ �ϳ��� ���̺� ���� ������ �ٿ��� 
SELECT b1.bookname
FROM book b1
WHERE b1.price > (SELECT AVG(b2.price)
                  FROM book b2
                  WHERE b2.publisher = b1.publisher);
                                   
-- ���ǻ纰 ��� �ݾ�
SELECT publisher, AVG(price)
FROM book
GROUP BY publisher;

-- �ζ��� �� : FROM �μ� ����
-- �� ��ȣ�� 2������ ���� �Ǹž��� �˻��Ͻÿ�(���̸��� ���� �Ǹž� ���)
SELECT cs.name, SUM(od.saleprice) AS total
FROM (SELECT custid, name 
      FROM customer
      WHERE custid <= 2) cs,
      orders od
WHERE cs.custid = od.custid
GROUP BY cs.name;



