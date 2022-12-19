-- 1. Визначити кількість відео, які попали в рекомендації, для кожного з каналів. Розмістити канали за алфавітним порядком.
SELECT TRIM(channel.channel_title) AS title, COUNT(channel.id_channel) FROM video, channel
WHERE channel.id_channel = video.id_channel
GROUP BY channel.channel_title
ORDER BY channel.channel_title ASC;

-- 2. Визначити кількість відео, які попали в рекомендації, для категорій з непарним id.
SELECT TRIM(category.name_category) AS category, COUNT(category.category_id) FROM video, category
WHERE category.category_id = video.category_id
AND category.category_id % 2 != 0
GROUP BY category.name_category;

-- 3. Знайти кількість відео, які потрапили в рекомендації, за кожною з дат.
SELECT COUNT(video_id), publish_time
FROM video
GROUP BY publish_time
ORDER BY publish_time;