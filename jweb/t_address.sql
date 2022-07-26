-- t_address 테이블 생성
CREATE TABLE t_address(
    num         NUMBER(4),
    username    VARCHAR2(20),
    tel         VARCHAR2(20) NOT NULL,
    email       VARCHAR2(30) NOT NULL,
    gender      VARCHAR2(6),
    joinDate    DATE DEFAULT SYSDATE,
    PRIMARY KEY(num)
);

-- 일련번호(시퀀스) 생성
CREATE SEQUENCE ab_seq
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000
NOCYCLE
NOCACHE;

-- 자료 추가
INSERT INTO t_address(num, username, tel, email, gender, joinDate)
VALUES (ab_seq.nextval, '테스트', '010-1234-5678', 'test@hi.com', '남', SYSDATE);

COMMIT;
SELECT * FROM t_address ORDER BY num;
DELETE FROM t_address;  -- 전체 데이터 삭제
DROP SEQUENCE ab_seq;   -- 시퀀스 삭제