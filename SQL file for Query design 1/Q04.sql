SELECT CONCAT(customer.customerFirstName, customer.customerLastName) AS NAME, itemsold.equipmentSerialNum, productcategory.modelNum, productcategory.modelDescription, saletransaction.salesAgreementDate
FROM customer, itemsold, productcategory, saletransaction, salelineitem
Where customer.customerNum = saletransaction.customerNum
AND saletransaction.salesAgreementNum = salelineitem.salesAgreementNum
AND salelineitem.equipmentSerialNum = itemsold.equipmentSerialNum
AND itemsold.modelNum = productcategory.modelNum
AND saletransaction.salesAgreementDate = "2020-06-21"