SELECT properties.id as id, title, cost_per_night, avg(property_reviews.rating) as average_rating
FROM properties
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE city LIKE '%ancouv%' 
GROUP BY properties.id
HAVING avg(property_reviews.rating) >=4
ORDER BY cost_per_night ASC
LIMIT 10;

-- SELECT properties.id as id, title, cost_per_night, avg(property_reviews.rating) as average_rating
-- FROM properties
-- JOIN property_reviews ON properties.id = property_reviews.property_id
-- WHERE city LIKE '%ancouv%' 
-- AND cost_per_night >= 50
-- AND cost_per_night <= 1000
-- GROUP BY properties.id
-- HAVING avg(property_reviews.rating) >=4
-- ORDER BY cost_per_night ASC
-- LIMIT 10;