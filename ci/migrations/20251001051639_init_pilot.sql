-- +goose Up
-- +goose StatementBegin
CREATE TABLE Pilot (
    plid    INT            NOT NULL,
    plname  VARCHAR(255)   NOT NULL,
    hours   REAL           NOT NULL,
    
    PRIMARY KEY (plid)
);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE Pilot;
-- +goose StatementEnd
