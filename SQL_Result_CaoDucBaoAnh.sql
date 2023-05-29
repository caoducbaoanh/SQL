SELECT DISTINCT Table_1.customer_name FROM 
(
  SELECT TOP(3) Table_2.customer_number
  FROM Table_2
  GROUP BY Table_2.customer_number
  ORDER BY sum(DISTINCT Table_2.order_quantity) DESC, customer_number  DESC
) AS AB 
INNER JOIN Table_1 
  ON AB.customer_number = Table_1.customer_number