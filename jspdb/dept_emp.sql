-- 관계 부서테이블(1) 직원테이블(多)
-- 부서(department)
-- 부서 : 부서아이디(deptid), 부서이름(deptname), 사무실위치(location)
-- 사원(employee)
-- 사원 : 사원아이디(empid), 사원이름(empname), 나이(age)

use jspdb;
create table department(
	deptid int primary key,
    deptname varchar(20) not null,
    location varchar(20) not null
);

create table employee(
	empid int primary key,
    empname varchar(30) not null,
    age int,
    deptid int,
    constraint fk_dept_emp foreign key(deptid) 
    references department(deptid)
);
-- constraint 제약조건 이름
-- on delete cascade (부모키를 삭제하면 자식키도 삭제됨)

-- 부서 추가
insert into department values (10, '개발팀', '서울');
insert into department values (20, '디자인팀', '인천');

-- 사원 추가
insert into employee values(101, '한강', 27, 10);
insert into employee values(102, '백두산', 32, 20);

-- 부모테이블(참조테이블)에 부서코드가 없으므로 추가 안됨
insert into employee values(103, '홍길동', 42, 30);
insert into employee(empid, empname, age, deptid) values (104, '천지연', 30, 40);

-- 삭제시에 자식키가 부모를 참조하므로 제약 조건에 해당: 삭제 불가
delete from department where deptid=10;
delete from department where deptname='디자인팀';

select * from department;
select * from employee;





