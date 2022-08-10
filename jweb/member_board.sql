
-- 회원 테이블 생성
CREATE TABLE t_member(
    memberid    VARCHAR2(20) PRIMARY KEY,
    passwd      VARCHAR2(20) NOT NULL,
    name        VARCHAR2(30) NOT NULL,
    gender      VARCHAR2(10),
    joindate    DATE DEFAULT SYSDATE
);

CREATE TABLE t_board(
    bnum    NUMBER(4) PRIMARY KEY,
    title   VARCHAR2(100) NOT NULL,
    content VARCHAR2(2000) NOT NULL,
    regdate DATE DEFAULT SYSDATE,
    memberId    VARCHAR2(20),
    CONSTRAINT FK_MemberBoard FOREIGN KEY (memberId)
    REFERENCES t_member(memberId)
);

-- 시퀀스 생성
CREATE SEQUENCE b_seq;

-- hit 칼럼 추가
ALTER TABLE t_board ADD hit NUMBER;

-- 외래키 제약조건 삭제
ALTER TABLE t_board DROP CONSTRAINT FK_MemberBoard;

-- 외래키 제약조건 재설정
ALTER TABLE t_board ADD CONSTRAINT FK_MemberBoard FOREIGN KEY (memberId)
REFERENCES t_member(memberId) ON DELETE CASCADE;

INSERT INTO t_member VALUES ('sky', 'm12345', '강하늘', '남', SYSDATE);
INSERT INTO t_board 
VALUES (b_seq.nextval, '제목입니다', '글 내용입니다', SYSDATE, 'cloudy');

SELECT * FROM t_member;
SELECT * FROM t_board;
DELETE FROM t_board WHERE bnum=3;

DESC t_member;