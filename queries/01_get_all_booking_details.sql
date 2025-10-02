-- Detailed view of all Bookings with
-- with join of Passenger, Flight, and Pilot details
SELECT
    booking.pid,
    passenger.pname,
    passenger.tier,
    passenger.age,
    booking.fnum,
    flight.origin,
    flight.destination,
    flight.dep_time,
    flight.arrival_time,
    flight.plid,
    pilot.plname,
    pilot.hours
FROM Booking AS booking

JOIN Passenger AS passenger
    ON passenger.pid = booking.pid
JOIN Flight AS flight
    ON flight.fnum = booking.fnum
JOIN Pilot AS pilot
    ON pilot.plid = flight.plid

ORDER BY booking.pid, booking.fnum;
