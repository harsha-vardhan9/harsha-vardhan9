CREATE DATABASE EVENT;
USE EVENT;
CREATE TABLE Equipment (
    Equipment_ID int NOT NULL,
    Equipment_name varchar(50) NOT NULL,
    Equipment_type varchar(50) NOT NULL,
    Available_quantity int NOT NULL,
    CONSTRAINT Equipment_pk PRIMARY KEY (Equipment_ID)
);

-- Table: Participate
CREATE TABLE Participate (
    Participate_ID int NOT NULL,
    Show_ID int NOT NULL,
    Performer_ID int NOT NULL,
    Cost_planned float NOT NULL,
    Cost_actual float NOT NULL,
    CONSTRAINT Participate_pk PRIMARY KEY (Participate_ID)
);

-- Table: Performer
CREATE TABLE Performer (
    Performer_ID int NOT NULL,
    Name varchar(50) NOT NULL,
    Genre varchar(50) NOT NULL,
    contactNo varchar(50) NOT NULL,
    CONSTRAINT Performer_pk PRIMARY KEY (Performer_ID)
);

-- Table: Required
CREATE TABLE Required (
    Required_ID int NOT NULL,
    Show_ID int NOT NULL,
    Equipment_ID int NOT NULL,
    Required_quantity int NOT NULL,
    CONSTRAINT Required_pk PRIMARY KEY (Required_ID)
);

-- Table: Show
CREATE TABLE `Show` (
    Show_ID int NOT NULL,
    Show_name varchar(50) NOT NULL,
    Show_location varchar(50) NOT NULL,
    Show_description text NOT NULL,
    CONSTRAINT Show_pk PRIMARY KEY (Show_ID)
);

-- foreign keys
-- Reference: Participate_Performer (table: Participate)
ALTER TABLE Participate ADD CONSTRAINT Participate_Performer FOREIGN KEY Participate_Performer (Performer_ID)
    REFERENCES Performer (Performer_ID);

-- Reference: Participate_Show (table: Participate)
ALTER TABLE Participate ADD CONSTRAINT Participate_Show FOREIGN KEY Participate_Show (Show_ID)
    REFERENCES `Show` (Show_ID);

-- Reference: Required_Equipment (table: Required)
ALTER TABLE Required ADD CONSTRAINT Required_Equipment FOREIGN KEY Required_Equipment (Equipment_ID)
    REFERENCES Equipment (Equipment_ID);

-- Reference: Required_Show (table: Required)
ALTER TABLE Required ADD CONSTRAINT Required_Show FOREIGN KEY Required_Show (`event`Show_ID)
    REFERENCES `Show` (Show_ID);

