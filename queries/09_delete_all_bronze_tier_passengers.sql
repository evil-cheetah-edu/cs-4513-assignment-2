DELETE passenger
FROM Passenger AS passenger
WHERE LOWER(passenger.tier) = 'bronze';
