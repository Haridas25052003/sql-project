create table std(
stid int,
stname varchar2(10),
stloc varchar2(10),
stfee number
);

drop table std;
drop table std1;

create table cllg(
cllgName varchar2(20),
cllgLoc varchar2(10),
cllgIntake int,
cllgFee number
);

alter  table std rename column stid to stdid;
alter  table std rename column stname to stdname;
alter table std rename column stloc to stdloc;
alter table std rename column stfee to stdfee;

select * from std;

insert into std (stdid,stdname,stdloc,stdfee) values (1021,'watson','basmath',8000);
insert into std (stdid,stdname,stdloc,stdfee) values (1022,'alex','kalamnuri',9000);
insert into std (stdid,stdname,stdloc,stdfee) values (1023,'morgan','sengaon',10000);
insert into std (stdid,stdname,stdloc,stdfee) values (1024,'james','hingoli',11000);
insert into std (stdid,stdname,stdloc,stdfee) values (1025,'steve','aundha',20000);
insert into std (stdid,stdname,stdloc,stdfee) values (1026,'warner','nanded',40000);

insert into cllg (cllgName,cllgLoc,cllgIntake,cllgFee) values ('bncoe','pusad',450,90000);
insert into cllg (cllgName,cllgLoc,cllgIntake,cllgFee) values ('ssbt','sangli',490,96000);
insert into cllg (cllgName,cllgLoc,cllgIntake,cllgFee) values ('rdg','hingoli',600,80000);
insert into cllg (cllgName,cllgLoc,cllgIntake,cllgFee) values ('nssb','kalamnuri',500,45000);
insert into cllg (cllgName,cllgLoc,cllgIntake,cllgFee) values ('corp','nanded',400,30000);
insert into cllg (cllgName,cllgLoc,cllgIntake,cllgFee) values ('mgm','nanded',600,78000);
insert into cllg (cllgName,cllgLoc,cllgIntake,cllgFee) values ('sggs','nanded',700,89000);

select * from cllg;

select 
max (cllgName)
from 
cllg 
group by 
cllgName,cllgLoc,cllgIntake,cllgFee
order by 
max (cllgName);

delete from 
cllg
where 
cllgName not in 
(
select 
max (cllgName) 
from 
cllg
group by 
cllgName,cllgLoc,cllgIntake,cllgFee
);


delete from cllg where cllgName='ssbt';
delete from cllg where cllgLoc='kalamnuri';

select * from std union all select * from cllg;





