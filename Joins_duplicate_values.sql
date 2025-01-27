
create table t1 (
id1 int
);

create table t2 (
id2 int
);

--no of records with diffrent kinds of joins when there duplicate values
insert into t1 values (1);
insert into t2 values (1);

select * from t1;
select * from t2;

drop table t1
drop table t2



select * from t1
inner join t2 on t1.id1 = t2.id2


select * from t1
left join t2 on t1.id1 = t2.id2


select * from t1
right join t2 on t1.id1 = t2.id2



select * from t1
full join t2 on t1.id1 = t2.id2

