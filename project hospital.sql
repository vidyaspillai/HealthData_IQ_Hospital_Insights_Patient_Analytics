-- Average rating by state
SELECT State, AVG(Hospital_overall_rating) as avg_rating
FROM hospinfo
WHERE Hospital_overall_rating IS NOT NULL AND Hospital_overall_rating != "Not Available"
GROUP BY State
ORDER BY avg_rating DESC;

-- Emergency hospitals per state
SELECT State, COUNT(*) as emergency_count
FROM hospinfo
WHERE EmergencyServices = 'TRUE'
GROUP BY State
ORDER BY emergency_count DESC;
