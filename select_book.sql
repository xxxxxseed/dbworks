-- ��� ������ �̸��� ������ �˻��Ͻÿ�
SELECT bookname, price FROM book;

-- ��� ������ ������ȣ, �����̸�, ���ǻ�, ������ �˻��Ͻÿ�
SELECT bookid, bookname, publisher, price
FROM book;

-- ��� ���ǻ縦 �˻��Ͻÿ�(�ߺ� ���� - DISTINCT)
SELECT DISTINCT publisher FROM book;

-- ������ WHERE ���
-- ������ 20000�� �̸��� ������ �˻�
SELECT * 
FROM book
WHERE price < 20000;

-- ������ 10000�� �̻� 20000�� ������ ���� �˻�
-- ���� : BETWEEN ~ AND
SELECT * 
FROM book
WHERE price BETWEEN 10000 AND 20000;

SELECT * 
FROM book
WHERE price >= 10000 AND price <= 20000;

-- IN(A, B) : A �Ǵ� B
-- ���ǻ簡 '�½�����' Ȥ�� '���ѹ̵��'�� ������ �˻�
SELECT * 
FROM book
WHERE publisher IN('�½�����', '���ѹ̵��');

SELECT * 
FROM book
WHERE publisher = '�½�����' OR publisher = '���ѹ̵��';

-- ���ǻ簡 '�½�����' Ȥ�� '���ѹ̵��'�� �ƴ� ������ �˻�
SELECT * 
FROM book
WHERE publisher NOT IN('�½�����', '���ѹ̵��');

-- LIKE ������ : %��ȣ ���
-- '�౸�� ����'�� �Ⱓ�� ���ǻ� �˻�
SELECT *
FROM book
WHERE bookname LIKE '�౸�� ����';

-- ���� �̸��� '�౸'�� ���Ե� ���ǻ� �˻�
-- �����ϴ� ���� : �ܾ�%, ������ ���� : %�ܾ�
SELECT bookname, publisher
FROM book
WHERE bookname Like '�౸%';

-- '�౸'�� ���� ���� �� ������ 20000�� �̻��� ���� �˻�
SELECT bookname, publisher, price
FROM book
WHERE bookname Like '%�౸%' AND price >= 20000;

-- ������ �̸������� �����Ͻÿ�
SELECT *
FROM book
ORDER BY bookname DESC;

-- ������ ������ ������������ �˻��ϰ�, ������ ������ ���ǻ縦 �������� �˻�
SELECT *
FROM book
ORDER BY price DESC, publisher ASC;
