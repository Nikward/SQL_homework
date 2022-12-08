--1. Количество исполнителей в каждом жанре.

SELECT g.name , count(singer_id)
	FROM singers_genres sg
    	LEFT JOIN genre g
		ON g.genre_id = sg.genre_id
    GROUP BY g.name;
--2. Количество треков, вошедших в альбомы 2019-2020 годов.
   
SELECT COUNT(*)
	FROM track t
    	LEFT JOIN album a
        ON a.album_id  = t.albom_id
  	WHERE year BETWEEN 2019 AND 2020

--3. Cредняя продолжительность треков по каждому альбому.
  	
SELECT a.name, avg(t.duration)
	FROM track t
    	LEFT JOIN album a
        ON a.album_id = t.albom_id 
	GROUP BY a.name;
--4. Все исполнители, которые не выпустили альбомы в 2020 году.

SELECT  s.name
	FROM album a
    	LEFT JOIN singer_album sa
        ON a.album_id = sa.album_id
        LEFT JOIN singer s
        ON s.singer_id = sa.singer_id
    WHERE a.year != 2020;
--5. Названия сборников, в которых присутствует конкретный исполнитель (выберите сами).
   
SELECT c.name
	FROM collection c
    	LEFT JOIN collection_track ct
        ON ct.collection_id = c.collection_id
        LEFT JOIN track t
        ON t.track_id = ct.track_id 
        LEFT JOIN album a2 
        ON a2.album_id = t.albom_id 
        LEFT JOIN singer_album sa2 
        ON sa2.album_id = a2.album_id 
        LEFT JOIN singer s2 
        ON s2.singer_id = sa2.singer_id 
	WHERE s2.name  LIKE 'Сплин'
	GROUP BY c.name;
--6. Название альбомов, в которых присутствуют исполнители более 1 жанра.

SELECT a.name
	FROM album a
		LEFT JOIN singer_album sa
        ON sa.album_id = a.album_id
        LEFT JOIN singer s
        ON s.singer_id = sa.singer_id
        LEFT JOIN singers_genres sg
        ON sg.singer_id = s.singer_id
        LEFT JOIN genre g
        ON g.genre_id = sg.genre_id
	GROUP BY a.name
    HAVING count(DISTINCT g.name) > 1;
--7. Наименование треков, которые не входят в сборники.
   
SELECT t.name, ct.collection_id 
	FROM track t
    	LEFT JOIN collection_track ct
   	    ON ct.track_id = t.track_id
    WHERE ct.collection_id IS NULL;
--8. Исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько).
   
SELECT s.name, t.duration 
	FROM singer s 
    	LEFT JOIN singer_album sa
        ON sa.singer_id = s.singer_id 
        LEFT JOIN album a
        ON a.album_id = sa.album_id
        LEFT JOIN track t
        ON t.albom_id = a.album_id 
	WHERE t.duration = (SELECT min(duration) FROM track t2);
--9. Название альбомов, содержащих наименьшее количество треков.

SELECT a.name, count(*)
	FROM album a
		LEFT JOIN track t
        ON t.albom_id = a.album_id
	GROUP BY a.name
 	HAVING count(*) = (SELECT count(*)
  				       FROM album a
  						    LEFT JOIN track t
  						    ON t.albom_id = a.album_id
  					   GROUP BY a.name
  					   ORDER BY count(*)
  					   LIMIT 1);				
