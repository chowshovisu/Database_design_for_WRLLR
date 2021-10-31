SELECT saletransaction.salesAgreementDate AS salesdate, customer.customerNum, CONCAT(customer.customerFirstName,'',customer.customerLastName) AS customer, productcategory.modelNum, productcategory.modelDescription,productcategory.modelManufacturer,itemsold.equipmentSalePrice AS price
FROM customer, itemsold, productcategory, saletransaction, salelineitem
Where customer.customerNum = saletransaction.customerNum
AND saletransaction.salesAgreementNum = salelineitem.salesAgreementNum
AND salelineitem.equipmentSerialNum = itemsold.equipmentSerialNum
AND itemsold.modelNum = productcategory.modelNum
AND saletransaction.salesAgreementDate>= (now() - INTERVAL 2 year)
ORDER BY salesdate
