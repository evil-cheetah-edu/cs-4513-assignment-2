-- +goose Up
-- +goose StatementBegin
INSERT INTO Pilot (plid, plname, hours)
VALUES
    (201, 'Smith',  12000),
    (202, 'Chen',    9500),
    (203, 'Garcia',  8000),
    (204, 'Patel',   7000)
;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM Pilot
WHERE pid in (
    201,
    202,
    203,
    204
);
-- +goose StatementEnd
