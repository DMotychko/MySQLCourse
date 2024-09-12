create table cities (
    id int primary key auto_increment,
    city varchar(20)
);

create table users (
    id int primary key auto_increment,
    name varchar(255),
    age int not null,
    city_id int,
    foreign key (city_id) references cities(id)
);

select * from users
join cities on users.city_id = cities.id;

select * from users left join cities on users.city_id = cities.id;

select client.*, CreditState from client
join application on client.idClient = application.Client_idClient
join department d on client.Department_idDepartment = d.idDepartment
where Sum > 10000;

insert into users value (null,'Max', 20, 3);

select distinct name from users;

select avg(age) from users
union
select sum(age) from users;

select concat('My name is ', name, ' I`m - ', age) from users;
select * from users where concat('My name is ', name, ' I`m - ', age) = 'My name is Max I`m - 18';

select d.* from client
                    join application on client.idClient = application.Client_idClient
                    join denis55.department d on client.Department_idDepartment = d.idDepartment
where FirstName = 'roman';
