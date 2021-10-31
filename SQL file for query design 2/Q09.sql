SELECT distinct(supplier.supplierNum), supplier.supplierName
FROM productorder
right JOIN supplier USING(suppliernum)
WHERE supplier.supplierNum != (SELECT supplier.supplierNum FROM supplier INNER JOIN productorder USING(suppliernum) WHERE productorder.orderDateReceived IS NULL)
ORDER BY supplier.supplierName