create table person(driver_id varchar(20),name varchar(20),address varchar(30), primary key(driver_id));
create table car(reg_num varchar(10), model varchar(10),year int,primary key(reg_num));
create table accident(report_num int,accident_date varchar(20),location varchar(20),primary key(report_num));
create table owns(driver_id varchar(10),reg_num varchar(10), primary key(driver_id,reg_num), foreign key(driver_id)references person(driver_id), foreign key(reg_num) references car(reg_num));
create table participated(driver_id varchar(10), reg_num varchar(10),report_num int, damage_amount int, primary key(driver_id,reg_num,report_num),foreign key(driver_id) references person(driver_id), foreign key(reg_num) references car(reg_num), foreign key(report_num)references accident(report_num));
select *from person;
INSERT INTO car (`reg_num`, `model`, `year`) VALUES
('KA052250', 'Indica', '1990'),
('KA031181', 'Lancer', '1957'),
('KA095477', 'Toyota', '1998'),
('KA053408', 'Honda', '2008'),
('KA041702', 'Audi', '2005');
//INSERT THE VALUES select *from car;
INSERT INTO accident (`report_num`, `accident_date`, `location`) VALUES
(11, '01-JAN-03', 'Mysore Road'),
(12, '02-FEB-04', 'Southend Circle'),
(13, '21-JAN-03', 'Bulltemple Road'),
(14, '17-FEB-08', 'Mysore Road'),
(15, '04-MAR-05', 'Kanakpura Road');
select *from accident;
INSERT INTO owns(`driver_id`, `reg_num`)  VALUES
('A01','KA052250'),
('A02', 'KA053408'),
('A03', 'KA031181'),
('A04','KA095477'),
('A05', 'KA041702');
select *from owns;
INSERT INTO participated(`driver_id`, `reg_num`,`report_num`,`damage_amount`)  VALUES
('A01','KA052250',11,10000),
('A02', 'KA053408',12,50000),
('A03', 'KA095477',13,25000),
('A04','KA031181',14,3000),
('A05', 'KA041702',15,5000);
select *from participated;
