-- +goose Up
-- +goose StatementBegin
INSERT INTO Passenger (pid, pname, tier, age)
VALUES
    ( 1, 'Alice', 'Gold',   28),
    ( 2, 'Bob',   'Silver', 35),
    ( 3, 'Carol', 'Gold',   22),
    ( 4, 'Dan',   'Bronze', 41),
    ( 5, 'Eva',   'Silver', 30),
    ( 6, 'Frank', 'Gold',   26),
    ( 7, 'Grace', 'Bronze', 19),
    ( 8, 'Henry', 'Silver', 45),
    ( 9, 'Irene', 'Gold',   33),
    (10, 'Jack',  'Bronze', 20),
    (11, 'Kim',   'Silver', 27),
    (12, 'Leo',   'Gold',   52)
;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM Passenger
WHERE pid in (
     1,
     2,
     3,
     4,
     5,
     6,
     7,
     8,
     9,
    10,
    11,
    12
);
-- +goose StatementEnd
