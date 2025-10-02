-- +goose Up
-- +goose StatementBegin
CREATE TABLE Booking (
    pid  INT          NOT NULL,
    fnum VARCHAR(255) NOT NULL,

    PRIMARY KEY (pid, fnum),
    FOREIGN KEY (pid)  REFERENCES Passenger
        ON DELETE CASCADE,
    FOREIGN KEY (fnum) REFERENCES Flight
        ON DELETE CASCADE
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE Booking;
-- +goose StatementEnd
