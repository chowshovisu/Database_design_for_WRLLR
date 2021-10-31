SELECT technician.technicianNum, time_format(SUM(TIMEDIFF(equipmentrepair.equipmentRepairTimeCompleted, equipmentrepair.equipmentRepairTimeStarted)), "%H %i %S") AS "Hours Worked", technician.technicianSalaryPerHour, (technician.technicianSalaryPerHour*time_format(SUM(TIMEDIFF(equipmentrepair.equipmentRepairTimeCompleted, equipmentrepair.equipmentRepairTimeStarted)), "%H %i %S")) AS "Total Salary"
FROM technician
INNER JOIN equipmentrepair USING(techniciannum)
GROUP BY technician.technicianNum
