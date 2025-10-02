-- Author: Donovan Semenuk
-- Username: @DonovanSemenuk
SELECT
    DISTINCT passenger.pname
FROM Passenger AS passenger
JOIN Booking AS booking
    ON booking.pid  = passenger.pid
JOIN Flight AS flight
    ON flight.fnum = booking.fnum
JOIN Pilot AS pilot
    ON pilot.plid = flight.plid
WHERE LOWER(passenger.tier) = 'gold'
    AND LOWER(pilot.plname) = 'smith';
