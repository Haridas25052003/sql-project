create table dept(
deptNo number(10),
deptName varchar2(10),
loc varchar2(10)
);

select * from dept;

alter table dept rename column loc to deptLoc;

select * from dept;

insert into dept (deptNo,deptName,deptLoc) values (&deptNo,&deptName,&deptLoc);

insert into dept (deptNo,deptName,deptLoc) values (&deptNo,&deptName,&deptLoc);

alter table dept modify deptLoc varchar2(20);
alter table dept modify deptName varchar2(20);

select * from dept;

insert into dept(deptNo,deptName,deptLoc) values(1023,'alex','london');
insert into dept(deptNo,deptName,deptLoc) values(1024,'sam','urope');

alter table dept rename column deptLoc to loc;
alter table dept rename column deptNo to deptnumber;
alter table dept rename column deptName to deptnam;

alter table dept rename column deptnam to deptName;
alter table dept rename column deptnumber to deptNo;
alter table dept rename column loc to deptLoc;

insert into dept (deptNo,deptName,deptLoc) values (1025,'watson','sydney');
insert into dept (deptNo,deptName,deptLoc) values (1026,'david','melbourn');
insert into dept (deptNo,deptName,deptLoc) values (1027,'steve','hobert');
insert into dept (deptNo,deptName,deptLoc) values (1028,'warner','austrelia');
insert into dept (deptNo,deptName,deptLoc) values (1029,'marsh','hobert');
insert into dept (deptNo,deptName,deptLoc) values (1030,'mitchell','melbourn');

select * from dept;
set pagesize 100;
set lines 150;

--creating table from existing table without rows of the table

create table dept1 as select * from dept  where 1=2;

select * from dept1;

--creating table from existing table with the rows and the data

create table dept2 as select * from dept where 1=1;

select * from dept2;

--creating table from existing table with the specific row

create table dept3 as select * from dept where deptLoc='london';

select * from dept3;

create table dept4 as select deptNo,deptName from dept;

drop table dept1;
drop table detp2;
drop table dept3;
drop table dept4;

create table dept1 as select * from dept1 where 1=2;




