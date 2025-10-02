SELECT
    DISTINCT passenger.pname
FROM Passenger AS passenger

JOIN Booking AS booking_first
    ON booking_first.pid = passenger.pid
JOIN Booking AS booking_second
    ON booking_second.pid = passenger.pid
    AND booking_first.fnum < booking_second.fnum

JOIN Flight AS flight_first
    ON flight_first.fnum = booking_first.fnum
JOIN Flight AS flight_second
    ON flight_second.fnum = booking_second.fnum

WHERE flight_first.dep_time = flight_second.dep_time;