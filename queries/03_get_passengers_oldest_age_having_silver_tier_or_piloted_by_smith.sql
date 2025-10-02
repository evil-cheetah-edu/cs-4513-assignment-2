-- Author: Donovan Semenuk
-- Username: @DonovanSemenuk
SELECT MAX(passenger.age) AS oldest_age
FROM Passenger AS passenger
WHERE LOWER(passenger.tier) = 'silver'
OR
EXISTS (
    SELECT 1
    FROM Booking AS booking

    JOIN Flight AS flight
        ON flight.fnum = booking.fnum
    JOIN Pilot AS pilot
        ON pilot.plid = flight.plid

    WHERE
        booking.pid = passenger.pid
        AND
        LOWER(pilot.plname) = 'smith'
);
