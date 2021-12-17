SELECT reservations.id as id, properties.title as title, cost_per_night, start_date, avg(property_reviews.rating) as average_rating
FROM properties
JOIN reservations ON properties.id = reservations.property_id
JOIN property_reviews ON properties.id = property_reviews.property_id
JOIN users ON users.id = properties.owner_id
WHERE reservations.guest_id = '1'
GROUP BY reservations.id, properties.title, properties.cost_per_night 
ORDER BY start_date ASC
LIMIT 10;
