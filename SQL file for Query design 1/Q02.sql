SELECT employee.employeeNum, employee.employeeLastName, employee.employeeFirstName, salesperson.salespersonSalescount, salesperson.salespersonCommissionPercent, salesperson.salesPersonSalesAmount, salesperson.salespersonCommissionPercent * salesperson.salespersonSalesAmount AS commissionearned
FROM employee, salesperson 
WHERE employeeNum = salespersonNum
ORDER BY salesperson.salespersonCommissionPercent * salesperson.salespersonSalesAmount 
