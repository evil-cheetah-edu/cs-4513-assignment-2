-- +goose Up
-- +goose StatementBegin
CREATE TABLE Flight (
    fnum         VARCHAR(255)   NOT NULL,
    origin       VARCHAR(255)   NOT NULL,
    destination  VARCHAR(255)   NOT NULL,
    dep_time     VARCHAR(255)   NOT NULL,
    arrival_time VARCHAR(255)   NOT NULL,
    plid         INT            NOT NULL,
    
    PRIMARY KEY (fnum),
    FOREIGN KEY (plid) REFERENCES Pilot
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE Flight;
-- +goose StatementEnd
