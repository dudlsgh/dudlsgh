show tables;

create table tblboard(
num int(4) not null primary key auto_increment,
id varchar(10) not null,
pass varchar(10) not null,
title varchar(30) not null,
contents text(1000) not null,
writedate varchar(20),
readcount int(4)
);

select * from tblboard;
select * from gaipboard;

drop table tblboard;
drop table gaipboard;

create table gaipboard(
num int(4) not null primary key auto_increment,
id varchar(10) not null,
pass varchar(10) not null,
name varchar(10) not null,
email varchar(20) not null,
emilHash varchar(64)
);


create table gaipboard(
num int(4) not null primary key auto_increment,
id varchar(10) not null,
pass varchar(10) not null,
name varchar(10) not null,
email varchar(20) not null
emilHash varchar(64),
emailChecked boolean
);

create table gaipEmail{
num int(4) not null primary key auto_increment,
test_email varchar(20) not null,
emilHash varchar(64),
emailChecked boolean
}
;




alter database dbmember default character set UTF8;

desc gaipboard;

select * from gaipboard;

show tables;

create table tblmember(
id varchar(10) not null primary key,
name varchar(10) not null,
pass varchar(10) not null
);

desc tblmember;