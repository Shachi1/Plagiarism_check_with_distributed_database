--Created by Mehjabeen Shachi
clear screen;

--delete existing table
drop table CodeInfo1 cascade constraints;
drop table CodeInfo2 cascade constraints;

--Create CodeInfo1 database
create table CodeInfo1(
id     integer, 
coderId   varchar2(30), 
functionName varchar2(30), 
        PRIMARY KEY (id)
);


create table CodeInfo2(
id     integer, 
coderId   varchar2(30), 
functionName varchar2(30), 
        PRIMARY KEY (id)
);


--Insert data into the supplier database
insert into CodeInfo1 values(1, 'Shachi2', 'BFS');
insert into CodeInfo2 values(2, 'Mehjabeen1', 'DFS');
insert into CodeInfo1 values(3, 'Linda', 'BFS');
insert into CodeInfo2 values(4, 'Wanda', 'BFS');


commit;

--Display all data from three databases
select * from CodeInfo1;
select * from CodeInfo2;

