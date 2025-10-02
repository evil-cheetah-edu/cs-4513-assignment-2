SELECT pilot.plname
FROM Pilot AS pilot

JOIN Flight AS flight
    ON flight.plid = pilot.plid

GROUP BY pilot.plid, pilot.plname
HAVING
    COUNT(DISTINCT flight.destination) = (
        SELECT COUNT(DISTINCT destination)
        FROM Flight
    );
