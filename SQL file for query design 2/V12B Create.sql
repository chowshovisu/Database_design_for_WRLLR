CREATE VIEW V12B AS 
SELECT productcategory.modelNum, productcategory.modelDescription, supplier.supplierNum
FROM productcategory, supplier, restocklineitem, productorder
WHERE productcategory.modelNum = restocklineitem.modelNum
AND productorder.orderNum = restocklineitem.orderNum
AND supplier.supplierNum = productorder.supplierNum