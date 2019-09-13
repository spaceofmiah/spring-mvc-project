create table Admin(
id int primary key auto_increment,
datejoined date,
firstname varchar(50) not null,
lastname varchar(50) not null,
email varchar(30) not null,
password varchar(40) not null
);

select * from admin;