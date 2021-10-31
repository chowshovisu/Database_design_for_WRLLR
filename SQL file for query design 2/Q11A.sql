CREATE VIEW V11a AS
  SELECT productcategory.modelNum, productcategory.modelDescription, COUNT(itemsold.modelNum) AS totalsales
  FROM productcategory, itemsold
  WHERE productcategory.modelNum=itemsold.modelNum
  GROUP BY productcategory.modelNum;
  
SELECT * FROM V11a;