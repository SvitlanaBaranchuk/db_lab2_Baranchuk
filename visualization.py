import psycopg2
import matplotlib.pyplot as plt

username = 'Baranchuk'
password = '20032003'
database = 'Baranchuk_DB'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT TRIM(channel.channel_title) AS title, COUNT(channel.id_channel) FROM video, channel
WHERE channel.id_channel = video.id_channel
GROUP BY channel.channel_title
ORDER BY channel.channel_title ASC;
'''

query_2 = '''
SELECT TRIM(category.name_category) AS category, COUNT(category.category_id) FROM video, category
WHERE category.category_id = video.category_id
AND category.category_id % 2 != 0
GROUP BY category.name_category;
'''

query_3 = '''
SELECT COUNT(video_id), publish_time
FROM video
GROUP BY publish_time
ORDER BY publish_time;
'''

conn1 = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
conn2 = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
conn3 = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)


with conn1:
    cur = conn1.cursor()

    print('1.')
    cur.execute(query_1)

    X = []
    Y = []
    for row in cur:
        X.append(row[0])
        Y.append(row[1])
    plt.bar(X, Y)
    plt.show()

print()
with conn2:
    cur = conn2.cursor()

    print('2.')
    cur.execute(query_2)

    X = []
    Y = []
    for row in cur:
        X.append(row[0])
        Y.append(row[1])

    x, y = plt.subplots()
    y.pie(Y, labels=X, autopct='%1.1f%%')
    plt.show()

print()
with conn3:
    cur = conn3.cursor()

    print('3.')
    cur.execute(query_3)

    X = []
    Y = []
    for row in cur:
        X.append(row[0])
        Y.append(row[1])

    plt.plot(Y, X)
    plt.show()