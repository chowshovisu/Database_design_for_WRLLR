SELECT customer.customerNum, CONCAT(customer.customerFirstName, customer.customerLastName) AS Name, saletransaction.salesAgreementNum, itemsold.equipmentSalePrice
FROM customer, saletransaction, itemsold, salelineitem
WHERE customer.customerNum = saletransaction.customerNum
AND saletransaction.salesAgreementNum = salelineitem.salesAgreementNum
AND salelineitem.equipmentSerialNum = itemsold.equipmentSerialNum

