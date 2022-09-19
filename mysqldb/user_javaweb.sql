-- user 생성
create user jweb@localhost identified by '54321';

-- db 생성
create database javaweb;

-- db 권한 주기
grant all privileges on javaweb.* to jweb@localhost with grant option;

create user spring_board_project@localhost identified by '54321';

alter user spring_board_project@localhost identified with mysql_native_password by '12345';

create database spring_board_project;

grant all privileges on spring_board_project.* to spring_board_project@localhost with grant option;

flush privileges;

