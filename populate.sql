-- ------------------------
-- Populate Channel table
-- ------------------------
INSERT INTO Channel(id_channel, channel_title)
VALUES('101', 'TED-Ed');
INSERT INTO Channel(id_channel, channel_title)
VALUES('102', 'Cracked');
INSERT INTO Channel(id_channel, channel_title)
VALUES('103', 'EminemVEVO');
INSERT INTO Channel(id_channel, channel_title)
VALUES('104', 'marshmello');
INSERT INTO Channel(id_channel, channel_title)
VALUES('105', 'officer401');
INSERT INTO Channel(id_channel, channel_title)
VALUES('106', 'Screen Junkies');
INSERT INTO Channel(id_channel, channel_title)
VALUES('107', 'Niki and Gabi');

-- ------------------------
-- Populate Video table
-- ------------------------
INSERT INTO Video(video_id, id_channel, video_title, category_id, publish_time)
VALUES('2kyS6SvSYSE', '101', 'WE WANT TO TALK ABOUT OUR MARRIAGE', 1, '2017-11-13');
INSERT INTO Video(video_id, id_channel, video_title, category_id, publish_time)
VALUES('1ZAPwfrtAFY', '102', 'The Trump Presidency: Last Week', 2, '2017-10-12');
INSERT INTO Video(video_id, id_channel, video_title, category_id, publish_time)
VALUES('5qpjK5DgCt4', '103', 'Nickelback Lyrics: Real or Fake?', 1, '2017-11-15');
INSERT INTO Video(video_id, id_channel, video_title, category_id, publish_time)
VALUES('39idVpFF7NQ', '104', 'The New SpotMini', 1, '2017-11-05');
INSERT INTO Video(video_id, id_channel, video_title, category_id, publish_time)
VALUES('YVfyYrEmzgM', '105', 'How Can You Control Your Dreams?', 3, '2017-11-21');
INSERT INTO Video(video_id, id_channel, video_title, category_id, publish_time)
VALUES('JBZTZZAcFTw', '106', 'Which Countries Are About To Collapse?', 3, '2017-11-22');
INSERT INTO Video(video_id, id_channel, video_title, category_id, publish_time)
VALUES('Om_zGhJLZ5U', '107', 'U2 - The Blackout', 4, '2017-11-15');

-- ------------------------
-- Populate Video_Rating table
-- ------------------------
INSERT INTO Video_Rating(video_id, act_date, likes, dislikes, v_views, coments)
VALUES('2kyS6SvSYSE', '2022-10-24', '57527', '2966', '748374', '15954');
INSERT INTO Video_Rating(video_id, act_date, likes, dislikes, v_views, coments)
VALUES('1ZAPwfrtAFY', '2022-10-24', '97185', '6146', '2418783', '12703');
INSERT INTO Video_Rating(video_id, act_date, likes, dislikes, v_views, coments)
VALUES('5qpjK5DgCt4', '2022-10-24', '146033', '5339', '3191434', '8181');
INSERT INTO Video_Rating(video_id, act_date, likes, dislikes, v_views, coments)
VALUES('39idVpFF7NQ', '2022-10-24', '10172', '666', '343168', '2146');
INSERT INTO Video_Rating(video_id, act_date, likes, dislikes, v_views, coments)
VALUES('YVfyYrEmzgM', '2022-10-24', '9763', '511', '119180', '1434');
INSERT INTO Video_Rating(video_id, act_date, likes, dislikes, v_views, coments)
VALUES('JBZTZZAcFTw', '2022-10-24', '114188', '1333', '687582', '8371');
INSERT INTO Video_Rating(video_id, act_date, likes, dislikes, v_views, coments)
VALUES('Om_zGhJLZ5U', '2022-10-24', '9419', '52', '75752', '1230');

-- ------------------------
-- Populate Category table
-- ------------------------
INSERT INTO Category(category_id, name_category)
VALUES(1, 'Show');
INSERT INTO Category(category_id, name_category)
VALUES(2, 'Politics');
INSERT INTO Category(category_id, name_category)
VALUES(3, 'Science');
INSERT INTO Category(category_id, name_category)
VALUES(4, 'Music');
INSERT INTO Category(category_id, name_category)
VALUES(5, 'Films');