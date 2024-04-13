SELECT * FROM mydb.ORDERS
                  INNER JOIN mydb.CUSTOMERS
                             ON mydb.CUSTOMERS.id = ORDERS.customer_id
WHERE LOWER(mydb.CUSTOMERS.name) = 'alexey';