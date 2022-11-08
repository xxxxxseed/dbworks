-- shopdb 생성
create database shopdb;

-- shopdb 권한 주기
grant all privileges on shopdb.* to root@localhost with grant option;

show databases;
use shopdb;
show tables;

select * from member;
select * from item order by reg_time desc;
select * from item_img order by item_img_id desc;
select * from orders;
select * from order_item;
select * from cart_item;

update member set role='USER' where email='test@test.com';
update member set role='ADMIN' where email='admin@test.com';

desc item_img;
delete from item where item_id = 13;