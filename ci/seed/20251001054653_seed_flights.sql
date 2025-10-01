-- +goose Up
-- +goose StatementBegin
INSERT INTO Flight
    (fnum, origin, destination, dep_time, arrival_time, plid)
VALUES
    ('F100', 'LAX', 'JFK', 'M 09:00', 'M 17:20', 201),
    ('F101', 'SFO', 'ORD', 'M 09:00', 'M 15:30', 202),
    ('F102', 'LAX', 'SEA', 'W 13:30', 'W 15:50', 201),
    ('F103', 'DFW', 'ORD', 'F 12:00', 'F 14:25', 203),
    ('F104', 'ATL', 'SEA', 'F 12:00', 'F 15:00', 204),
    ('F105', 'ORD', 'DFW', 'M 15:30', 'M 17:45', 201),
    ('F106', 'LAX', 'ATL', 'F 09:00', 'F 16:35', 201),
    ('F107', 'BOS', 'ORD', 'W 10:00', 'W 12:30', 201)
;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM Flight
WHERE fnum in (
    'F100',
    'F101',
    'F102',
    'F103',
    'F104',
    'F105',
    'F106',
    'F107'
);
-- +goose StatementEnd
