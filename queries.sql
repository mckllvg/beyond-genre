SELECT 
    track_genre,
    COUNT(*) as total_tracks,
    ROUND(AVG(energy), 4) as avg_energy,
    ROUND(AVG(acousticness), 4) as avg_acousticness,
    ROUND(AVG(popularity), 2) as avg_popularity
FROM spotify_tracks
GROUP BY track_genre
HAVING COUNT(*) >= 100  -- Ensures we only look at robust genres with enough data
ORDER BY avg_energy DESC -- Change this to avg_acousticness DESC to see the opposite side!
LIMIT 10;