SELECT flight.fnum
FROM Flight as flight
WHERE LOWER(flight.origin) = 'lax'

UNION

SELECT booking.fnum
FROM Booking AS booking
GROUP BY booking.fnum
HAVING COUNT(DISTINCT booking.pid) >= 5;
