INSERT INTO Client (id, first_name, last_name, phone_number, address, email, gender)
VALUES 
  ('C001', 'John', 'Doe', '123-456-7890', '123 Main St, City, Country', 'john.doe@example.com', 'Male'),
  ('C002', 'Jane', 'Smith', '987-654-3210', '456 Oak Ave, Town, Country', 'jane.smith@example.com', 'Female'),
  ('C003', 'Michael', 'Johnson', '555-123-4567', '789 Pine Rd, Village, Country', 'michael.j@example.com', 'Male'),
  ('C004', 'Emily', 'Williams', '222-333-4444', '101 Elm Blvd, City, Country', 'emily.w@example.com', 'Female'),
  ('C005', 'David', 'Brown', '777-888-9999', '222 Cedar Ln, Town, Country', 'david.b@example.com', 'Male'),
  ('C006', 'Sophia', 'Garcia', '444-555-6666', '333 Maple Dr, Village, Country', 'sophia.g@example.com', 'Female'),
  ('C007', 'Daniel', 'Martinez', '999-000-1111', '444 Birch Ave, City, Country', 'daniel.m@example.com', 'Male'),
  ('C008', 'Olivia', 'Lopez', '666-777-8888', '555 Pine Rd, Town, Country', 'olivia.l@example.com', 'Female'),
  ('C009', 'Alexander', 'Hernandez', '111-222-3333', '666 Oak St, Village, Country', 'alexander.h@example.com', 'Male'),
  ('C010', 'Isabella', 'Gonzalez', '888-999-0000', '777 Elm Blvd, City, Country', 'isabella.g@example.com', 'Female');


INSERT INTO Vol (id, destination, departure_date, arrival_date, class_type, description, places_available, type_of_vol, status)
VALUES
  (1, 'New York', '2024-07-01', '2024-07-05', 'Business', 'Direct flight', 50, 'International', 'Scheduled'),
  (2, 'Paris', '2024-07-10', '2024-07-15', 'Economy', 'Connecting flight', 100, 'Domestic', 'Scheduled'),
  (3, 'Tokyo', '2024-08-01', '2024-08-10', 'First Class', 'Non-stop flight', 30, 'International', 'Scheduled'),
  (4, 'London', '2024-08-15', '2024-08-20', 'Economy', 'Direct flight', 80, 'Domestic', 'Scheduled'),
  (5, 'Dubai', '2024-09-01', '2024-09-05', 'Business', 'Connecting flight', 60, 'International', 'Scheduled'),
  (6, 'Sydney', '2024-09-10', '2024-09-20', 'Economy', 'Direct flight', 120, 'International', 'Scheduled'),
  (7, 'Los Angeles', '2024-10-01', '2024-10-05', 'First Class', 'Non-stop flight', 40, 'Domestic', 'Scheduled'),
  (8, 'Berlin', '2024-10-10', '2024-10-15', 'Economy', 'Connecting flight', 90, 'International', 'Scheduled'),
  (9, 'Rome', '2024-11-01', '2024-11-10', 'Business', 'Direct flight', 70, 'Domestic', 'Scheduled'),
  (10, 'Hong Kong', '2024-11-15', '2024-11-20', 'First Class', 'Non-stop flight', 50, 'International', 'Scheduled');

INSERT INTO Reservation (id, client_id, vol_id, reservation_date)
VALUES
  ('R001', 'C001', 1, '2024-06-20'),
  ('R002', 'C002', 3, '2024-06-21'),
  ('R003', 'C003', 5, '2024-06-22'),
  ('R004', 'C004', 2, '2024-06-23'),
  ('R005', 'C005', 4, '2024-06-24'),
  ('R006', 'C006', 6, '2024-06-25'),
  ('R007', 'C007', 8, '2024-06-26'),
  ('R008', 'C008', 10, '2024-06-27'),
  ('R009', 'C009', 7, '2024-06-28'),
  ('R010', 'C010', 9, '2024-06-29');

INSERT INTO Evaluation (id, reservation_id, note, comment, evaluation_date)
VALUES
  (1, 'R001', 4, 'Great service overall.', '2024-07-05'),
  (2, 'R002', 5, 'Excellent flight experience.', '2024-07-15'),
  (3, 'R003', 3, 'Could improve on meal options.', '2024-08-10'),
  (4, 'R004', 4, 'Comfortable seating.', '2024-08-20'),
  (5, 'R005', 5, 'Efficient check-in process.', '2024-09-05'),
  (6, 'R006', 4, 'Friendly cabin crew.', '2024-09-20'),
  (7, 'R007', 3, 'Delayed departure.', '2024-10-05'),
  (8, 'R008', 4, 'Good value for money.', '2024-10-15'),
  (9, 'R009', 5, 'Smooth landing.', '2024-11-10'),
  (10, 'R010', 3, 'Long wait for baggage.', '2024-11-20');

INSERT INTO Payment (id, reservation_id, payment_date, amount)
VALUES
  (1, 'R001', '2024-06-21', 500.00),
  (2, 'R002', '2024-06-22', 750.00),
  (3, 'R003', '2024-06-23', 400.00),
  (4, 'R004', '2024-06-24', 600.00),
  (5, 'R005', '2024-06-25', 700.00),
  (6, 'R006', '2024-06-26', 550.00),
  (7, 'R007', '2024-06-27', 800.00),
  (8, 'R008', '2024-06-28', 900.00),
  (9, 'R009', '2024-06-29', 650.00),
  (10, 'R010', '2024-06-30', 850.00);

INSERT INTO Personnel (id, first_name, last_name, email, contact, salary)
VALUES
  ('P001', 'Michael', 'Smith', 'michael.smith@airline.com', 1112223333, 55000.00),
  ('P002', 'Jennifer', 'Brown', 'jennifer.brown@airline.com', 2223334444, 60000.00),
  ('P003', 'William', 'Johnson', 'william.johnson@airline.com', 3334445555, 58000.00),
  ('P004', 'Emily', 'Davis', 'emily.davis@airline.com', 4445556666, 62000.00),
  ('P005', 'James', 'Martinez', 'james.martinez@airline.com', 5556667777, 57000.00),
  ('P006', 'Jessica', 'Garcia', 'jessica.garcia@airline.com', 6667778888, 59000.00),
  ('P007', 'Daniel', 'Rodriguez', 'daniel.rodriguez@airline.com', 7778889999, 61000.00),
  ('P008', 'Sophia', 'Lopez', 'sophia.lopez@airline.com', 8889990000, 60000.00),
  ('P009', 'Alexander', 'Hernandez', 'alexander.hernandez@airline.com', 9990001111, 59000.00),
  ('P010', 'Olivia', 'Gonzalez', 'olivia.gonzalez@airline.com', 1234567890, 58000.00);

INSERT INTO Flight_Crew (vol_id, personnel_id, role)
VALUES
  (1, 'P001', 'Pilot'),
  (2, 'P002', 'Co-pilot'),
  (3, 'P003', 'Flight Attendant'),
  (4, 'P004', 'Flight Attendant'),
  (5, 'P005', 'Pilot'),
  (6, 'P006', 'Co-pilot'),
  (7, 'P007', 'Flight Attendant'),
  (8, 'P008', 'Flight Attendant'),
  (9, 'P009', 'Pilot'),
  (10, 'P010', 'Co-pilot');
