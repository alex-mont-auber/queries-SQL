SELECT COUNT(FlightsNum) FROM test.flights;

SELECT origin, AVG(ArrDelay) AS Promedio_Salidas, AVG(DepDelay) AS Promedio_Llegadas FROM test.flights GROUP BY origin;

SELECT origin, colYear, colMonth, (ArrDelay * 1.0000) AS Promedio_Llegadas FROM test.flights ORDER BY origin, colYear;

SELECT city, colYear, ColMonth, (ArrDelay * 1.0000) AS Promedio_Llegadas FROM test.flights INNER JOIN test.airports ON origin = iata ORDER BY city, colYear;

SELECT UniqueCarrier, colYear, colMonth, SUM(cancelled) AS total_cancelled FROM test.flights GROUP BY UniqueCarrier ORDER BY total_cancelled DESC;

SELECT TailNum, SUM(distance) AS totalDistance FROM test.flights GROUP BY TailNum ORDER BY totalDistance DESC LIMIT 10 OFFSET 1;

SELECT UniqueCarrier, AVG(ArrDelay) AS avgDelay FROM test.flights GROUP BY UniqueCarrier ORDER BY avgDelay DESC LIMIT 9;