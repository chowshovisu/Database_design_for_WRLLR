SELECT reservation.activityNum, activity.activityType, CONCAT (employee.employeeFirstName,employee.employeeLastName) AS `Guide`,customer.customerNum,CONCAT (customer.customerFirstName,customer.customerLastName) AS `Customer`,reservation.numberOfParticipants AS `Participants`,reservation.requestedDate
FROM customer
INNER JOIN reservation USING(customerNum)
INNER JOIN activity USING(activityNum)
INNER JOIN employee ON activity.guideNum=employee.employeeNum
WHERE reservation.requestedDate>=CURDATE() AND reservation.requestedDate<= ADDDATE(CURDATE(),7);