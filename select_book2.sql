-- ���� �Լ� : SUM, COUNT, AVG
-- �ֹ� ���̺� �˻�
-- ���� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�
SELECT SUM(saleprice) AS �Ѹ���
FROM orders;

-- '�迬��' ���� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�
SELECT SUM(saleprice) AS �Ѹ���
FROM orders
WHERE custid = 2;

-- ���� �ֹ��� ������ �� �Ǹž�, ��հ��� ���Ͻÿ�
SELECT SUM(saleprice) AS Total,
       AVG(saleprice) AS Average
FROM orders;

-- ���� ������ ���� �Ǹ� �Ǽ��� ���Ͻÿ�
SELECT COUNT(*) AS ���ǸŰǼ�
FROM orders;

-- ������ �ֹ��� ������ �� ������ �Ǹž��� ���Ͻÿ�
-- �׷� : GROUP BY
SELECT custid, COUNT(*) ��������, SUM(saleprice) �Ѿ�
FROM orders
GROUP BY custid;
