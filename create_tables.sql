CREATE TABLE Depo (
    Depo_number SERIAL PRIMARY KEY, 
    Name VARCHAR(100) NOT NULL,
    Parking_spaces INT NOT NULL,
    Repair_spaces INT NOT NULL,
    Address TEXT NOT NULL,
    Contact_phone VARCHAR(20)
);

CREATE TABLE Tracks (
    Depo_number INT NOT NULL,
    Track_number INT NOT NULL,
    Purpose VARCHAR(100) NOT NULL,
    Track_length NUMERIC(10, 2) NOT NULL, 
    Is_track_free BOOLEAN NOT NULL,       
    Is_electrified BOOLEAN NOT NULL,      
    
    PRIMARY KEY (Depo_number, Track_number),
    
    CONSTRAINT fk_depo_tracks FOREIGN KEY (Depo_number) 
        REFERENCES Depo (Depo_number) 
        ON UPDATE CASCADE 
        ON DELETE CASCADE
);