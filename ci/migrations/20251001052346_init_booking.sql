-- +goose Up
-- +goose StatementBegin
CREATE TABLE Booking (
    pid  INT          NOT NULL,
    fnum VARCHAR(255) NOT NULL,

    PRIMARY KEY (pid, fnum),
    FOREIGN KEY (pid)  REFERENCES Passenger,
    FOREIGN KEY (fnum) REFERENCES Flight
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE Booking;
-- +goose StatementEnd
