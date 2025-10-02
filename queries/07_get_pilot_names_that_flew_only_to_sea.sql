SELECT
    pilot.plname
FROM Pilot AS pilot
WHERE
    EXISTS (
        SELECT 1
        FROM Flight AS sea_flight
        WHERE
            sea_flight.plid = pilot.plid
            AND
            sea_flight.destination = 'SEA'
    )
    AND
    NOT EXISTS (
        SELECT 1
        FROM Flight AS non_sea_flight
        WHERE
            non_sea_flight.plid = pilot.plid
            AND
            non_sea_flight.destination <> 'SEA'
    );
