create table student1(stid int, stname varchar2(10),styear int,stfee int, stvillege varchar2(10));

insert into student1 (stid,stname,styear,stfee,stvillege) values (1021,'haridas',4,53605,'pangra shinde');

alter table student1 modify stvillege varchar2(20);
--changing the table names

alter table student1 rename column stid to stdid;
alter table student1 rename column stname to stdname;
alter table student1 rename column styear to stdyear;
alter table student1 rename column stfee to stdfee;
alter table student1 rename column stvillege to stdvillege;

insert into student1 (stdid,stdname,stdyear,stdfee,stdvillege) values(1021,'haridas',4,53605,'pangra shinde');
insert into student1 (stdid,stdname,stdyear,stdfee,stdvillege) values(1022,'alex',3,60000,'ramnagar');
insert into student1 (stdid,stdname,stdyear,stdfee,stdvillege) values(1023,'david',2,55000,'jamnagar');
insert into student1 (stdid,stdname,stdyear,stdfee,stdvillege) values(1024,'smith',3,56000,'hingoli');
insert into student1 (stdid,stdname,stdyear,stdfee,stdvillege) values(1025,'pat',2,25600,'washington');

select * from student1;

insert into student1 values (&stdid,&stdname,&stdyear,&stdfee,&stdvillege);

insert into student1 values (&stdid,&stdname,&stdyear,&stdfee,&stdvillege);

insert into student1 values (&stdid,&stdname,&stdyear,&stdfee,&stdvillege);

select * from student1;

select * from student1 where stdname='david';

select * from student1 where stdname='alex';

select * from student1 where stdname='haridas';

select pagesize  150;
select lines 150;

