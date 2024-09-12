select * from client where length(FirstName) < 6;

select * from department where DepartmentCity = 'lviv';

select * from client where Education = 'high' order by LastName;

select * from client where LastName like '%ov' or LastName like '%ova';

select * from application order by idApplication desc limit 5;

select client.* from client
join denis55.department d on client.Department_idDepartment = d.idDepartment
where DepartmentCity = 'lviv';

select distinct client.FirstName from client;

select (select count(*) from client) as total_client,
       (select count(*) from client
        join denis55.department d on d.idDepartment = client.Department_idDepartment
        where DepartmentCity = 'Lviv') as Lviv_client;

select * from client
join denis55.application a on client.idClient = a.Client_idClient
where Sum > 5000 and CreditState = 'Not returned';

select max(a.Sum) as maxCredit, client.FirstName from client
join denis55.application a on client.idClient = a.Client_idClient
group by client.idClient;

select max(sum) as maxCredit, min(sum) as minCredit from application;

select count(*) from application
join denis55.client c on c.idClient = application.Client_idClient
where c.Education = 'high';
