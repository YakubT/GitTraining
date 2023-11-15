/*
SELECT COUNT(DISTINCT(district)) FROM customer INNER JOIN address
    ON customer.address_id = address.address_id (ans - 376) */
SELECT COUNT(DISTINCT(district)) FROM address /* ans the same as expected */