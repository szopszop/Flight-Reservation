INSERT INTO airports (id, name, city, country)
VALUES
    ('a1c9016d-7db4-4a24-ae08-602034e93810', 'John F. Kennedy International Airport', 'New York', 'United States'),
    ('e9c411b5-b7b5-46cb-80b6-13e0ca8de01d', 'Los Angeles International Airport', 'Los Angeles', 'United States'),
    ('b17c88c5-b7ed-4f08-9d11-72ee245c9837', 'Heathrow Airport', 'London', 'United Kingdom'),
    ('ba5e5e5d-1d62-4a2c-8d8a-c4c4cbf335c4', 'Charles de Gaulle Airport', 'Paris', 'France'),
    ('7a3a6a34-7e36-4150-9e37-cf6ba058b269', 'Adolfo Suárez Madrid–Barajas Airport', 'Madrid', 'Spain');

INSERT INTO flights (id, departure_airport_id, arrival_airport_id, departure_time, arrival_time, price)
VALUES
    ('99abdf4a-2f57-4b6e-9026-23b6bbbd7db1', 'a1c9016d-7db4-4a24-ae08-602034e93810', 'e9c411b5-b7b5-46cb-80b6-13e0ca8de01d', '2023-04-10 16:30:00', '2023-04-11 01:20:00', '450.00'),
    ('99abdf4a-2f57-4b6e-9026-23b6bbbd7cb2', 'a1c9016d-7db4-4a24-ae08-602034e93810', 'e9c411b5-b7b5-46cb-80b6-13e0ca8de01d', '2023-04-10 16:30:00', '2023-04-11 01:20:00', '450.00'),
    ('b082f376-130d-42e2-a283-8e06b3dfe94d', 'a1c9016d-7db4-4a24-ae08-602034e93810', 'ba5e5e5d-1d62-4a2c-8d8a-c4c4cbf335c4', '2023-04-10 12:00:00', '2023-04-11 05:20:00', '320.50'),
    ('5f5b5ca5-023a-42d6-a57c-12e8a874f44c', 'b17c88c5-b7ed-4f08-9d11-72ee245c9837', 'e9c411b5-b7b5-46cb-80b6-13e0ca8de01d', '2023-04-10 14:45:00', '2023-04-10 22:15:00', '280.00'),
    ('1560e9c9-c01e-4c8f-a20c-45de5aa0d7e3', 'ba5e5e5d-1d62-4a2c-8d8a-c4c4cbf335c4', 'e9c411b5-b7b5-46cb-80b6-13e0ca8de01d', '2023-04-10 19:00:00', '2023-04-11 02:10:00', '320.50'),
    ('e8c6110f-b7f2-4313-a3f8-3e63a0d1dafe', '7a3a6a34-7e36-4150-9e37-cf6ba058b269', 'a1c9016d-7db4-4a24-ae08-602034e93810', '2023-04-11 07:30:00', '2023-04-11 10:45:00', '150.00'),
    ('295f300a-b33e-4443-9ed5-5dc5d7b68403', 'e9c411b5-b7b5-46cb-80b6-13e0ca8de01d', 'b17c88c5-b7ed-4f08-9d11-72ee245c9837', '2023-04-11 15:20:00', '2023-04-11 23:50:00', '320.50');


INSERT INTO users (id, username, email, password)
VALUES
    ('7a3a6a34-7e36-4150-9e37-cf6ba058b269', 'JohnDoe123', 'email@email.com', 'password'),
    ('7a3a6a34-7e36-4150-9e37-cf6ba058b270', 'MerryKey', 'sa@sa.sa', 'password');

INSERT INTO flight_reservations (id, user_id, flight_id, reservation_time, flight_date)
VALUES
    ('2794e01c-91c1-4a98-8c3e-0ce0d2d9dd70', '7a3a6a34-7e36-4150-9e37-cf6ba058b269', '99abdf4a-2f57-4b6e-9026-23b6bbbd7db1', '2023-04-07 12:00:00', '2023-04-11'),
    ('2794e01c-91c1-4a98-8c4e-0ce0d2d9dd70', '7a3a6a34-7e36-4150-9e37-cf6ba058b270', '99abdf4a-2f57-4b6e-9026-23b6bbbd7db1', '2023-04-07 12:00:00', '2023-04-11'),
    ('99abdf4a-2f57-4b6e-9026-23b6bbbd7cb2', '7a3a6a34-7e36-4150-9e37-cf6ba058b270', 'b082f376-130d-42e2-a283-8e06b3dfe94d', '2023-04-07 12:00:00', '2023-04-11');

