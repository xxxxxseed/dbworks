-- spring 프로젝트 사용
CREATE TABLE tbl_board(
    bno     NUMBER(5),
    title   VARCHAR2(200) NOT NULL,
    writer  VARCHAR2(20) NOT NULL,
    content VARCHAR2(2000) NOT NULL,
    regdate DATE DEFAULT SYSDATE,
    updatedate DATE DEFAULT SYSDATE,
    cnt     NUMBER(5) DEFAULT 0
);
-- 기본키 제약 조건 설정
ALTER TABLE tbl_board ADD CONSTRAINT pk_board
PRIMARY KEY(bno);

-- 자동 번호
CREATE SEQUENCE seq;

CREATE TABLE tbl_user(
    id      VARCHAR2(8) PRIMARY KEY,
    passwd  VARCHAR2(8) NOT NULL,
    name    VARCHAR2(20) NOT NULL,
    role    VARCHAR2(5)
);

-- 더미 데이터
INSERT INTO tbl_board (bno, title, writer, content)
VALUES (seq.NEXTVAL, '테스트제목', 'user00', '테스트 내용입니다');

-- 재귀 복사
INSERT INTO tbl_board (bno, title, writer, content)
SELECT seq.NEXTVAL, title, writer, content
FROM tbl_board;

-- 게시글 추가
INSERT INTO tbl_board(bno, title, writer, content)
VALUES (seq.NEXTVAL, '가입인사', '관리자', '잘 부탁드립니다.');

-- 회원 추가
INSERT INTO tbl_user
VALUES ('test', 'test123', '관리자', 'Admin');
INSERT INTO tbl_user
VALUES ('user1', 'user123', '장그래', 'User');

-- bno는 삭제되면 번호가 중간에서 비워짐
-- ROWNUM 실제 칼럼은 아니지만(VIEW) 실제(원래) 데이터를 카운트하여 출력해줌

SELECT ROWNUM, bno, title, writer, content FROM tbl_board 
ORDER BY bno DESC;

-- 인덱스(INDEX)로 정렬하기
-- 힌트 주기
SELECT /*+ INDEX_DESC(tbl_board pk_board) */
    ROWNUM, bno, title, writer, content
FROM tbl_board;

-- 1페이지 가져오기
SELECT /*+ INDEX_DESC(tbl_board pk_board) */
    ROWNUM, bno, title, writer, content
FROM tbl_board
WHERE ROWNUM <= 10;

-- 2페이지 가져올 수 없음(0보다 크게 시작해야만 가져올수 있음)
SELECT /*+ INDEX_DESC(tbl_board pk_board) */
    ROWNUM, bno, title, writer, content
FROM tbl_board
WHERE ROWNUM > 0 AND ROWNUM <= 20;

-- 서브 쿼리(인라인 뷰)
-- ROWNUM은 키워드이므로 별칭 사용
SELECT * FROM
(
    SELECT /*+ INDEX_DESC(tbl_board pk_board) */
    ROWNUM rn, bno, title, writer, content
    FROM tbl_board
    WHERE ROWNUM <= 20
)
WHERE rn > 0;

-- 페이지 처리 SQL
-- 2페이지인 경우
SELECT * FROM
(
    SELECT /*+ INDEX_DESC(tbl_board pk_board) */
    ROWNUM rn, bno, title, writer, content, regdate, updatedate, cnt
    FROM tbl_board
    WHERE ROWNUM <= (2 * 10)
)
WHERE rn > (2 - 1) * 10;


SELECT * FROM tbl_board ORDER BY bno DESC;
SELECT * FROM tbl_user;

DELETE FROM tbl_board WHERE bno=42;

DROP TABLE tbl_board;
DROP SEQUENCE seq;

COMMIT;