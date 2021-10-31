SELECT modelnum, modeldescription, COUNT(DISTINCT(suppliernum)) AS SupplierNum
FROM v12b
GROUP BY modelnum
HAVING COUNT(DISTINCT(suppliernum)) > 1