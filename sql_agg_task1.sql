create schema mydb;
create table mydb.CUSTOMERS(
                               id SERIAL PRIMARY KEY ,
                               name TEXT NOT NULL ,
                               surname TEXT NOT NULL ,
                               age SMALLSERIAL CHECK ( age >= 0 AND age <= 200),
                               phone_number varchar(20)
);

INSERT INTO mydb.CUSTOMERS(name, surname, age, phone_number)
VALUES ('Anatoliy', 'Shubin', 45, 89644444444),
       ('Petr', 'Kotov', 30, 89645555555),
       ('Alex', 'Ivanov', 18, 89646666666),
       ('Inna', 'Ivanova', 80, 89647777777),
       ('Valeriy', 'Shubin', 33, 89640000000),
       ('Demid', 'Shubin', 8, 89641111111),
       ('Alena', 'Ivanova', 27, 89642222222),
       ('Ivan', 'Ivanov', 25, 89643333333);

INSERT INTO mydb.CUSTOMERS(name, surname, age, phone_number)
VALUES ('alexey', 'Shubin', 45, 89644444444),
       ('Alexey', 'Kotov', 30, 89645555555),
       ('ALEXEY', 'Ivanov', 18, 89646666666),
       ('AlExEy', 'Ivanova', 80, 89647777777);