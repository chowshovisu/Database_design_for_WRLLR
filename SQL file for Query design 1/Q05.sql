SELECT productorder.orderNum, productorder.orderDatePlaced, productorder.orderDateReceived, productorder.supplierNum, supplier.supplierName, supplier.supplierContact, supplier.supplierPhone
FROM productorder, supplier
WHERE productorder.supplierNum = supplier.supplierNum
AND productorder.orderDateReceived IS NULL 
ORDER BY productorder.orderDatePlaced