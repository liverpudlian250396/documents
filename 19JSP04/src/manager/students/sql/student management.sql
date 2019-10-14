create table Student(
id int primary key auto_increment,
name varchar(50) not null default 'please input',
age int not null default 0);
create table Class(
id int primary key auto_increment,
class_name varchar(50) not null default 'please input');
create table DayOff(
id int primary key auto_increment,
student_id int,
FOREIGN KEY (student_id) REFERENCES student(id),
day_off date);
create table StudentClass(
id int primary key auto_increment,
student_id int,
FOREIGN KEY (student_id) REFERENCES student(id),
class_id int,
FOREIGN KEY (class_id) REFERENCES class(id));

insert into student(name,age) values('Nguyễn Thành Cang',23);
insert into student(name,age) values('Nguyễn Văn A',22);
insert into student(name,age) values('Đoàn Thị C',23);

insert into class(class_name) value('Java II');
insert into class(class_name) value('Lập trình hương đối tượng');
insert into class(class_name) value('CSDL&GT');
insert into class(class_name) value('Kĩ thuật lập trình');

insert into dayoff(student_id,day_off)
values (1,"2019-10-05");
insert into dayoff(student_id,day_off)
values (1,"2019-10-06");
insert into dayoff(student_id,day_off)
values (2,"2019-10-05");
insert into dayoff(student_id,day_off)
values (3,"2019-10-07");
insert into dayoff(student_id,day_off)
values (3,"2019-10-08");
use students;
insert into studentclass(student_id,class_id)
values(1,1);
insert into studentclass(student_id,class_id)
values(1,3);
insert into studentclass(student_id,class_id)
values(2,2);
insert into studentclass(student_id,class_id)
values(3,4);
insert into studentclass(student_id,class_id)
values(3,2);
