-- spring 프로젝트 사용
CREATE TABLE tbl_board(
    bno     NUMBER(5) PRIMARY KEY,
    title   VARCHAR2(200),
    writer  VARCHAR2(20),
    content VARCHAR2(2000),
    regdate DATE DEFAULT SYSDATE,
    cnt     NUMBER(5) DEFAULT 0
);

-- 자동 번호
CREATE SEQUENCE seq;

CREATE TABLE tbl_user(
    id      VARCHAR2(8) PRIMARY KEY,
    passwd  VARCHAR2(8) NOT NULL,
    name    VARCHAR2(20) NOT NULL,
    role    VARCHAR2(5)
);

-- 게시글 추가
INSERT INTO tbl_board(bno, title, writer, content)
VALUES (seq.NEXTVAL, '가입인사', '관리자', '잘 부탁드립니다.');

-- 회원 추가
INSERT INTO tbl_user
VALUES ('test', 'test123', '관리자', 'Admin');
INSERT INTO tbl_user
VALUES ('user1', 'user123', '장그래', 'User');

SELECT * FROM tbl_board ORDER BY bno DESC;
SELECT * FROM tbl_user;

DELETE FROM tbl_board WHERE bno=3;

COMMIT;