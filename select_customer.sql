
-- ��� ���� ������ �˻��Ͻÿ�
SELECT * 
FROM customer;

-- ����ȣ�� 3���� ���� �̸��� �˻��Ͻÿ�
SELECT name
FROM customer
WHERE custid = 3;

-- �ּҰ� ���ѹα��� ���� �̸��� ��ȭ��ȣ�� �˻��Ͻÿ�
SELECT name, phone
FROM customer
WHERE address LIKE '%���ѹα�%';

-- ��ȭ ��ȣ�� ���� ���� �̸��� �ּҸ� �˻��Ͻÿ�
-- IS NULL ������ : ���� �ڷ�, IS NOT NULL : NULL�� �ƴ� �ڷ�
SELECT name, address
FROM customer
WHERE phone IS NULL;

-- ���� �� �ο��� ���Ͻÿ�
SELECT COUNT(*) AS �Ѱ���
FROM customer;

-- å�� ��ü ����
SELECT COUNT(*) AS �ѵ�����
FROM book;