USE formula1;

SELECT * 
FROM formula1.drivers
RIGHT JOIN formula1.qualifying ON formula1.driver.driverId = formula1.qualifying.driverId;

SELECT *
FROM formula1.driver 
RIGHT JOIN formula1.qualifying ON formula1.driver.driverId = formula1.qualifying.driverId
RIGHT JOIN formula1.races ON formula1.qualifying.raceId = formula1.races.raceId
LEFT JOIN formula1.circuits ON formula1.races.circuitId = formula1.circuits.circuitid
LEFT JOIN formula1.results ON formula1.races.raceId = formula1.results.raceId
WHERE year > 2020;



SELECT *
FROM formula1.races 
JOIN formula1.qualifying ON formula1.races.raceId = formula1.qualifying.raceId
JOIN formula1.results ON formula1.races.raceId = formula1.results.raceId AND formula1.qualifying.driverId = formula1.results.driverId
JOIN formula1.driver ON formula1.driver.driverid = formula1.qualifying.driverId
WHERE year > 2020
ORDER BY races.raceId ASC;



