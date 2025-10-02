SELECT
    passenger.tier,
    CAST(AVG(1.0 * passenger.age) AS DECIMAL(10, 2)) AS average_age
FROM Passenger AS passenger
GROUP BY passenger.tier;
