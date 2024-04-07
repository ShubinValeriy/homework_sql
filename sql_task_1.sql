create schema mydb;

create table mydb.PERSONS(
                             name text NOT NULL ,
                             surname text NOT NULL ,
                             age smallserial CHECK ( age >= 0 and age <= 200),
                             phone_number varchar(20),
                             city_of_living varchar(40),
                             PRIMARY KEY (name, surname, age)
);

insert into mydb.PERSONS (name, surname, age, phone_number, city_of_living)
VALUES ('Valeriy', 'Shubin', 33, 89640000000, 'MOSCOW'),
       ('Demid', 'Shubin', 8, 89641111111, 'MOSCOW'),
       ('Alena', 'Ivanova', 27, 89642222222, 'SOCHI'),
       ('Ivan', 'Ivanov', 25, 89643333333, 'SOCHI');