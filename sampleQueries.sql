-- 5 oldest usernames

SELECT username 
FROM users 
ORDER BY created_at DESC 
LIMIT 5;

-- most common day of week to register

SELECT DAYNAME(created_at) AS dayOfWeek,
    COUNT(*) AS dayCount
FROM users
GROUP BY dayOfWeek
ORDER BY dayCount DESC

-- inacive users (no photos)

SELECT
    username, 
    image_url
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- most liked photo contest

SELECT 
    username,
    photos.id,
    photos.image_url, 
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

-- average photo posts by users
    
SELECT (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS 'Average Posts'; 

-- top 5 hashtags

SELECT 
    tags.tag_name,
    COUNT(*) AS Popular    
FROM photo_tags
JOIN tags
    ON photo_tags.tag_id = tags.id
GROUP BY tags.id
ORDER BY Popular DESC
LIMIT 5;

-- find bots that like all photos

SELECT  
    username AS suspects,
    COUNT(*) AS totalLikes
FROM users
INNER JOIN likes
    ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING totalLikes = (SELECT COUNT(*) FROM photos);
