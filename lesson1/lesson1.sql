use denis55;

show tables;

create table users
(
    id int primary key auto_increment,
    name varchar(255) not null,
    age int not null,
    gender varchar(6) not null
);

insert into users value (null, 'Max', 18, 'male');

select * from users;

select * from users where name='oleg';

select id, name from users;

select * from users where name like 'o%';

select * from users where name like '%o%';

select * from users where name like '__e%';

select * from users where age = 30;

select * from users where age != 20;

select * from users where age not between 20 and 30;

select * from users where name = 'oleg' or name = 'olha' and age = 20;

select * from users where age not in (18, 20, 30);

select * from users where length(name) <= 4;

select * from users order by age desc;

select * from users limit 2 offset 5;

select min(age) as minAge from users;
select max(age) as maxAge from users;
select avg(age) as avgAge from users;

select count(*) as count from users where name = 'olha';

select count(*) as count, gender from users group by gender;

select count(*) as count, model from cars where year > 2020 group by model having count >= 2;

delete from users where id = 3;

update users set age = 88 where id = 1;

