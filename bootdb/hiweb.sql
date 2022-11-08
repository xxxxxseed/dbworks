-- hiweb db

SELECT * FROM member;
SELECT * FROM board;

DELETE FROM member WHERE member_id = 'test2';
DELETE FROM board WHERE member_id = 'test2';