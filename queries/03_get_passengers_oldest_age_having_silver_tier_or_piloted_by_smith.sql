-- Author: Donovan Semenuk
-- Username: @DonovanSemenuk
SELECT MAX(p.age) AS oldest_age
FROM Passenger AS p
WHERE p.tier = 'Silver'
   OR EXISTS (
        SELECT 1
        FROM Booking b
        JOIN Flight  f  ON f.fnum = b.fnum
        JOIN Pilot   pl ON pl.plid = f.plid
        WHERE b.pid = p.pid
          AND pl.plname = 'Smith'
   );