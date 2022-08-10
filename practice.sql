CREATE TABLE customer(
    custid  NUMBER PRIMARY KEY,
    name    VARCHAR2(40),
    address VARCHAR2(50),
    phone   VARCHAR2(20)
);

DESC customer;

INSERT INTO customer VALUES (1, '박지성', '영국 맨체스터', '000-5000-0001');
INSERT INTO customer VALUES (2, '김연아', '대한민국 서울', '000-6000-0001');

DELETE FROM customer WHERE custid=2;

SELECT * FROM customer;


CREATE TABLE orders(
    orderid     NUMBER PRIMARY KEY,
    custid      NUMBER,
    bookid      NUMBER,
    saleprice   NUMBER,
    orderdate   DATE,
    FOREIGN KEY(custid) REFERENCES customer(custid)
);

DESC orders;

INSERT INTO orders(orderid, custid, bookid, saleprice, orderdate)
VALUES (1, 1, 1, 6000, TO_DATE('2022-08-10', 'YYYY-MM-DD'));
INSERT INTO orders(orderid, custid, bookid, saleprice, orderdate)
VALUES (2, 2, 1, 6000, TO_DATE('2022-08-10', 'YYYY-MM-DD'));
INSERT INTO orders(orderid, custid, bookid, saleprice, orderdate)
VALUES (3, 2, 4, 7000, TO_DATE('2022-08-10', 'YYYY-MM-DD'));

SELECT * FROM orders;

SELECT orderid, custid, bookid, saleprice, TO_CHAR(orderdate, 'YYYY-MM-DD') ORDERDATE FROM orders;


SELECT TO_CHAR(SYSDATE, 'YY') 년도,
       TO_CHAR(SYSDATE, 'YYYY') 년도_4,
       TO_CHAR(SYSDATE, 'MM') 월,
       TO_CHAR(SYSDATE, 'DD') 일,
       TO_CHAR(SYSDATE, 'YYYY-MM-DD') 날짜
FROM dual;