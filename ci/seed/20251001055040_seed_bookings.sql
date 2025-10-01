-- +goose Up
-- +goose StatementBegin
INSERT INTO Booking (pid, fnum)
VALUES
    ( 1, 'F100'),
    ( 3, 'F100'),
    ( 5, 'F100'),
    ( 6, 'F100'),
    ( 8, 'F100'),
    ( 9, 'F100'),
    ( 1, 'F101'),
    ( 3, 'F101'),
    ( 2, 'F101'),
    ( 4, 'F101'),
    ( 1, 'F102'),
    (12, 'F105'),
    ( 2, 'F105'),
    ( 7, 'F106'),
    (10, 'F104'),
    (11, 'F103')
;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM Booking
WHERE pid in (
     1,
     3,
     5,
     6,
     8,
     9,
     1,
     3,
     2,
     4,
     1,
    12,
     2,
     7,
    10,
    11
);
-- +goose StatementEnd
