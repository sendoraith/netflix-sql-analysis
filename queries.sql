-- 1. Content Type Distribution
SELECT 
    type,
    COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY type
ORDER BY total_titles DESC;

-- 2. Content Trend Over Time (Movies vs TV Shows)
SELECT 
    release_year,
    type,
    COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY release_year, type
ORDER BY release_year;

-- 3. Movie vs TV Ratio Over Time
SELECT 
    release_year,
    SUM(CASE WHEN type = 'Movie' THEN 1 ELSE 0 END) * 1.0 / COUNT(*) AS movie_ratio,
    SUM(CASE WHEN type = 'TV Show' THEN 1 ELSE 0 END) * 1.0 / COUNT(*) AS tv_ratio,
    COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year;

-- 4. Genre Distribution (cleaned)
SELECT 
    TRIM(value) AS genre,
    COUNT(*) AS total
FROM netflix_titles,
     json_each('["' || REPLACE(listed_in, ',', '","') || '"]')
GROUP BY genre
ORDER BY total DESC;

-- 5. Country Distribution (cleaned)
SELECT 
    TRIM(value) AS country,
    COUNT(*) AS total
FROM netflix_titles,
     json_each('["' || REPLACE(country, ',', '","') || '"]')
WHERE country IS NOT NULL
  AND TRIM(value) != ''
GROUP BY TRIM(value)
ORDER BY total DESC;

-- 6. Anime Proportion
SELECT 
    COUNT(*) * 1.0 / (SELECT COUNT(*) FROM netflix_titles) AS anime_ratio,
    COUNT(*) AS anime_titles
FROM netflix_titles
WHERE listed_in LIKE '%Anime%';

-- 7. Anime by Country
SELECT 
    TRIM(value) AS country,
    COUNT(*) AS total_anime_titles
FROM netflix_titles,
     json_each('["' || REPLACE(country, ',', '","') || '"]')
WHERE listed_in LIKE '%Anime%'
  AND country IS NOT NULL
  AND TRIM(value) != ''
GROUP BY TRIM(value)
ORDER BY total_anime_titles DESC;