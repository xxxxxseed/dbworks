show databases;

use hidb;

show tables;

select * from member;

select * from board;

select * from reply;

update member set role='ROLE_ADMIN' where userid='admin';
