PREPARE listrepairs FROM 'SELECT customer.customerNum, CONCAT(customer.customerFirstName, " ", customer.customerLastName) AS "Customer", repairitem.equipmentserialnum, 
equipmentrepair.equipmentrepairdate, equipmentrepair.equipmentrepairproblemdescription 
From customer 
INNER JOIN serviceagreement USING(customernum) 
INNER JOIN repairitem USING(serviceagreementnum)
INNER JOIN equipmentrepair USING(equipmentserialnum)  
WHERE customer.customernum = ?';
SET @CN = '2';
EXECUTE listrepairs USING @CN;

