--Lister tous les clients avec leurs informations de contact :
SELECT id, first_name, last_name, phone_number, adresse, email FROM Client;

--Afficher tous les vols disponibles (non complets) :
SELECT id, destination, departure_date, arrival_date, class_type, place_avalaible, type_of_vol, statut
FROM Vol
WHERE place_avalaible > 0 AND statut = 'Disponible';

--Afficher les réservations pour un client spécifique :
SELECT Reservation.id, Vol.destination, Vol.departure_date, Vol.arrival_date, Reservation.reservation_date
FROM Reservation
JOIN Vol ON Reservation.vol_id = Vol.id
WHERE Reservation.client_id = 'client_id_exemple';

--Lister toutes les évaluations avec les commentaires et les notes :
SELECT Evaluation.id, Reservation.id AS reservation_id, Evaluation.note, Evaluation.comment, Evaluation.evaluation_date
FROM Evaluation
JOIN Reservation ON Evaluation.reservation_id = Reservation.id;

--Afficher le nombre total de places disponibles pour chaque vol :
SELECT destination, SUM(place_avalaible) AS total_places
FROM Vol
GROUP BY destination;

--Lister les paiements effectués avec le montant et la date :
SELECT Payement.id, Payement.reservation_id, Payement.payement_date, Payement.amount
FROM Payement;

--Afficher le montant total des paiements reçus à ce jour :
SELECT SUM(amount) AS total_revenue
FROM Payement;

--Afficher les informations du personnel :
SELECT id, first_name, last_name, email, contact, salary
FROM Personnel;

--Lister les membres de l équipage de vol pour une réservation spécifique :
SELECT Flight_Crew.reservation_id, Personnel.first_name, Personnel.last_name, Flight_Crew.role
FROM Flight_Crew
JOIN Personnel ON Flight_Crew.personnel_id = Personnel.id
WHERE Flight_Crew.reservation_id = 'reservation_id_exemple';

--Afficher les réservations et les évaluations correspondantes :
SELECT Reservation.id AS reservation_id, Client.first_name, Client.last_name, Vol.destination, Evaluation.note, Evaluation.comment
FROM Reservation
JOIN Client ON Reservation.client_id = Client.id
JOIN Vol ON Reservation.vol_id = Vol.id
JOIN Evaluation ON Reservation.id = Evaluation.reservation_id;

--Lister les réservations effectuées dans un intervalle de dates donné :
SELECT Reservation.id, Client.first_name, Client.last_name, Vol.destination, Reservation.reservation_date
FROM Reservation
JOIN Client ON Reservation.client_id = Client.id
JOIN Vol ON Reservation.vol_id = Vol.id
WHERE Reservation.reservation_date BETWEEN '2024-01-01' AND '2024-06-30';

--Afficher les revenus générés par destination :
SELECT Vol.destination, SUM(Payement.amount) AS total_revenue
FROM Payement
JOIN Reservation ON Payement.reservation_id = Reservation.id
JOIN Vol ON Reservation.vol_id = Vol.id
GROUP BY Vol.destination;

--Afficher le nombre de réservations par client :
SELECT Client.id, Client.first_name, Client.last_name, COUNT(Reservation.id) AS reservation_count
FROM Client
LEFT JOIN Reservation ON Client.id = Reservation.client_id
GROUP BY Client.id;

--Lister les vols avec le nombre de réservations :
SELECT Vol.id, Vol.destination, COUNT(Reservation.id) AS reservation_count
FROM Vol
LEFT JOIN Reservation ON Vol.id = Reservation.vol_id
GROUP BY Vol.id;

--Afficher les évaluations avec une note supérieure à un seuil donné :
SELECT Evaluation.id, Reservation.id AS reservation_id, Evaluation.note, Evaluation.comment, Evaluation.evaluation_date
FROM Evaluation
JOIN Reservation ON Evaluation.reservation_id = Reservation.id
WHERE Evaluation.note > 3;


