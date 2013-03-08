
drop table appointment;
drop table status;
drop table position;


create table position( 
	id integer primary key autoincrement,
	number varchar(255) not null unique,
	name varchar(255) not null
);

insert into position (number, name) values('PSC-C2560', 'Manager, Software Engineering');
insert into position (number, name) values('PSC-C2561', 'Senior Java Developer');
insert into position (number, name) values('PSC-C2562', 'Senior C-sharp Developer');

create table status(
	id integer primary key autoincrement,
	name varchar(255),
	sequence int
);

insert into status(name, sequence) values('Available', 10);
insert into status(name, sequence) values('Proposed', 20);
insert into status(name, sequence) values('Confirmed', 30);
insert into status(name, sequence) values('Cancelled', 40);

create table appointment(
	id integer primary key autoincrement,
	datetime datetime,
	candidate varchar(255),
	phone_number varchar(255),
	position_id int,
	status_id int
);
