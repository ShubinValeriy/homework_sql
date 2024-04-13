CREATE TABLE mydb.ORDERS(
                            id SERIAL PRIMARY KEY ,
                            date DATE NOT NULL ,
                            customer_id INT NOT NULL REFERENCES mydb.customers(id),
                            product_name VARCHAR(50) NOT NULL ,
                            amount SMALLSERIAL CHECK ( amount >= 0) NOT NULL
);

INSERT INTO mydb.ORDERS(date, customer_id, product_name, amount)
VALUES ('2023-06-30', 9, 'Персик', 6),
       ('2023-07-01', 9, 'Слива', 7),
       ('2023-07-10', 10, 'Клубника', 20),
       ('2023-07-12', 11, 'Клубника', 20),
       ('2023-07-20', 11, 'Ананас', 2),
       ('2023-07-30', 12, 'Картофель', 20),
       ('2023-08-10', 12, 'Рыба', 1);

INSERT INTO mydb.ORDERS(date, customer_id, product_name, amount)
VALUES ('2023-06-30', 1, 'Персик', 6),
       ('2023-07-01', 2, 'Слива', 7),
       ('2023-07-10', 3, 'Клубника', 20),
       ('2023-07-12', 4, 'Клубника', 20),
       ('2023-07-20', 5, 'Ананас', 2),
       ('2023-07-30', 6, 'Картофель', 20),
       ('2023-08-10', 7, 'Рыба', 1);