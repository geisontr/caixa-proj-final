------------------------------------------------------------
-- 1) Quais os 5 filmes mais populares?
-- Critério: filmes com maior número de avaliações (ratings)
------------------------------------------------------------

SELECT 
    m.movie_id,
    m.title,
    COUNT(r.rating) AS total_ratings
FROM ratings r
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.movie_id, m.title
ORDER BY total_ratings DESC
LIMIT 5;


------------------------------------------------------------
-- 2) Qual gênero tem a melhor avaliação média?
------------------------------------------------------------

SELECT 
    m.genre,
    ROUND(AVG(r.rating), 2) AS avg_rating
FROM ratings r
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.genre
ORDER BY avg_rating DESC;


------------------------------------------------------------
-- 3) Qual país assiste mais filme?
-- Critério: país com maior número de avaliações feitas
------------------------------------------------------------

SELECT 
    u.country,
    COUNT(r.rating_id) AS total_views
FROM ratings r
JOIN users u ON r.user_id = u.user_id
GROUP BY u.country
ORDER BY total_views DESC;
