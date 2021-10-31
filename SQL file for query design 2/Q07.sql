SELECT productcategory.modelNum, productcategory.modelDescription, equipmentrepair.equipmentRepairDate, COUNT(*) AS 'TotalNumberOfRepairs'
FROM equipmentrepair
INNER JOIN itemsold USING(equipmentserialnum)
INNER JOIN productcategory USING(modelnum)
WHERE equipmentrepair.equipmentRepairDate >= '2021.01.01'
GROUP BY productcategory.modelNum



