-- Author: Donovan Semenuk
-- Username: @DonovanSemenuk
SELECT DISTINCT p.pname
FROM Passenger AS p
JOIN Booking  AS b  ON b.pid  = p.pid
JOIN Flight   AS f  ON f.fnum = b.fnum
JOIN Pilot    AS pl ON pl.plid = f.plid
WHERE p.tier = 'Gold'
    AND pl.plname = 'Smith';