create table users (
   id int primary key auto_increment,
   username varchar(20),
   password varchar(20),
   profile_id int not null unique,
   foreign key (profile_id) references profile(id)
);

create table profile (
    id int primary key auto_increment,
    name varchar(20) not null,
    lastname varchar(20) not null,
    age int not null
);

select * from users
    join denis55.profile p on p.id = users.profile_id;

create table users_cars (
    car_id bigint,
    user_id int,
    primary key (car_id, user_id),
    foreign key (car_id) references cars(id),
    foreign key (user_id) references users(id)
);