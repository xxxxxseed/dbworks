-- user 생성
create user jweb@localhost identified by '54321';

-- db 생성
create database javaweb;

-- db 권한 주기
grant all privileges on javaweb.* to jweb@localhost with grant option;

-- himedia user에게 bootdb에 대한 모든 권한 부여

create user himedia@localhost identified by '54321';

alter user himedia@localhost identified with mysql_native_password by '12345';

create database bootdb;

grant all privileges on bootdb.* to himedia@localhost with grant option;

flush privileges;

-- hidb 생성
create database hidb;

-- db권한 root
grant all privileges on root.* to root@localhost with grant option;

select * from mysql.user;

show variables like 'max_connections';

set global max_user_connections=200;


