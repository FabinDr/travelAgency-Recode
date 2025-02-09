/* Lógico_2: */

CREATE TABLE _client (
    client_id INTEGER PRIMARY KEY,
    fk_phone_phone_PK INTEGER,
    cpf_client INTEGER,
    name_client VARCHAR,
    email_client VARCHAR
);
CREATE TABLE _ticket_destination (
    ticket_id INTEGER PRIMARY KEY,
    fk__request_request_id INTEGER,
    fk_destination_destination_id INTEGER,
    purchase_date DATE,
    price_ticket INTEGER,
    departure_date_ DATE,
    return_date_ DATE
);
CREATE TABLE _request (
    request_id INTEGER PRIMARY KEY,
    fk__client_client_id INTEGER,
    cod_request INTEGER,
    request_date DATE
);

CREATE TABLE phone (
    phone_PK INTEGER NOT NULL PRIMARY KEY,
    phone INTEGER
);

CREATE TABLE destination (
    destination_id INTEGER PRIMARY KEY,
    name_destination VARCHAR,
    description TEXT
);
 
ALTER TABLE _client ADD CONSTRAINT FK__client_2
    FOREIGN KEY (fk_phone_phone_PK)
    REFERENCES phone (phone_PK)
    ON DELETE NO ACTION;
 
ALTER TABLE _ticket_destination ADD CONSTRAINT FK__ticket_destination_2
    FOREIGN KEY (fk__request_request_id)
    REFERENCES _request (request_id)
    ON DELETE CASCADE;
 
ALTER TABLE _ticket_destination ADD CONSTRAINT FK__ticket_destination_3
    FOREIGN KEY (fk_destination_destination_id)
    REFERENCES destination (destination_id);
 
ALTER TABLE _request ADD CONSTRAINT FK__request_2
    FOREIGN KEY (fk__client_client_id)
    REFERENCES _client (client_id)
    ON DELETE CASCADE;