CREATE VIEW V12A AS
SELECT productcategory.modelNum, productcategory.modelDescription, productorder.orderNum, supplier.supplierNum, restocklineitem.lineItemEquipmentPrice
FROM productcategory, productorder, supplier, restocklineitem
WHERE productcategory.modelNum = restocklineitem.modelNum
AND productorder.orderNum = restocklineitem.orderNum
AND supplier.supplierNum = productorder.supplierNum
ORDER BY productcategory.modelNum, productorder.orderNum
