-- book ���̺� ����
CREATE TABLE t_book AS
SELECT * FROM book;

SELECT * FROM t_book;

-- '�౸�� ����'�� 10000������ ����
UPDATE t_book 
SET price = 10000
WHERE bookid = 1;

-- ����� ������ ���� �̸��� �������� �����Ͻÿ�
UPDATE t_book
SET publisher = '������'
WHERE bookid = 6;

-- '�߱��� ��Ź��'�� ���ǻ縦 '�Ｚ��'���� �����ϰ�, ������ 15000������ ����
UPDATE t_book
SET publisher = '�Ｚ��', price = 15000
WHERE bookid = 8;

-- ������ȣ�� 5���� å�� �����Ͻÿ�
DELETE FROM t_book
WHERE bookid = 5;

-- �������̺� ������ �����Ͻÿ�
DELETE FROM t_book
WHERE bookname = '���� ���̺�';



ROLLBACK;   -- Ŀ���ϱ����� ��� ����

COMMIT;