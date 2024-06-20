-- Création de la base de donnees `airline`
CREATE DATABASE airline;

-- Création de la table Client
CREATE TABLE Client (
  id VARCHAR(50) PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  phone_number VARCHAR(50),
  adresse VARCHAR(50),
  email VARCHAR(50),
  gender VARCHAR(20)
);

-- Création de la table Vol
CREATE TABLE Vol (
  id INT PRIMARY KEY,
  destination VARCHAR(50),
  departure_date DATE,
  arrival_date DATE,
  class_type VARCHAR(50),
  description VARCHAR(50),
  place_avalaible INT,
  type_of_vol VARCHAR(50),
  statut VARCHAR(50)
);

-- Création de la table Reservation
CREATE TABLE Reservation (
  id VARCHAR(50) PRIMARY KEY,
  client_id VARCHAR(50),
  vol_id INT,
  reservation_date DATE,
  FOREIGN KEY (client_id) REFERENCES Client(id),
  FOREIGN KEY (vol_id) REFERENCES Vol(id)
);

-- Création de la table Evaluation
CREATE TABLE Evaluation (
  id INT PRIMARY KEY,
  reservation_id VARCHAR(50),
  note INT,
  comment TEXT,
  evaluation_date DATE,
  FOREIGN KEY (reservation_id) REFERENCES Reservation(id)
);

-- Création de la table Payement
CREATE TABLE Payement (
  id INT PRIMARY KEY,
  reservation_id VARCHAR(50),
  payement_date DATE,
  amount INT,
  FOREIGN KEY (reservation_id) REFERENCES Reservation(id)
);

-- Création de la table Personnel
CREATE TABLE Personnel (
  id VARCHAR(50) PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(50),
  contact INT,
  salary DECIMAL(10,2)
);

-- Création de la table Flight_Crew
CREATE TABLE Flight_Crew (
  vol_id VARCHAR(50),
  personnel_id VARCHAR(50),
  role VARCHAR(100),
  PRIMARY KEY (reservation_id, personnel_id),
  FOREIGN KEY (reservation_id) REFERENCES Reservation(id),
  FOREIGN KEY (personnel_id) REFERENCES Personnel(id)
);


