PREPARE CustomerCreditCards FROM 'SELECT customer.customerNum, CONCAT(customer.customerFirstName, " ", customer.customerLastName) AS "Customer", creditcard.creditCardNum, creditcard.creditCardType, CONCAT(creditcard.creditCardExpirationMonth, "/", creditcard.creditCardExpirationYear) AS "ExpDate" FROM customer INNER JOIN holdsaccount USING(customernum) INNER JOIN creditcard USING(creditcardnum) WHERE customer.customernum = ?';
SET @CN = '2';
EXECUTE CustomerCreditCards USING @CN;

