-- +goose Up
-- +goose StatementBegin
CREATE TABLE Passenger (
    pid     INT            NOT NULL,
    pname   VARCHAR(255)   NOT NULL,
    tier    VARCHAR(20)    NULL,
    age     INT            NULL,
    
    PRIMARY KEY (pid)
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE Passenger;
-- +goose StatementEnd
