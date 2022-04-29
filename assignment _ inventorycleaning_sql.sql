CREATE DATABASE shirts_db;

USE shirts_db;

CREATE TABLE shirts ( shirts_id int Not null Primary Key Auto_Increment, article varchar (100), color varchar(50), shirt_size varchar(20),last_worn int);

INSERT INTO shirts (  article , color, shirt_size, last_worn)
VALUES ( 't-shirt', 'white', 'S', 10);

INSERT INTO shirts (  article , color, shirt_size, last_worn)
VALUES ( 't-shirt', 'green', 'S', 200);

INSERT INTO shirts (  article , color, shirt_size, last_worn)
VALUES ( 'polo shirt', 'black', 'M', 10);

INSERT INTO shirts (  article , color, shirt_size, last_worn)
VALUES ( 'tank top', 'blue', 'S', 50);


INSERT INTO shirts (  article , color, shirt_size, last_worn)
VALUES ( 't-shirt', 'pink', 'S', 0);

INSERT INTO shirts (  article , color, shirt_size, last_worn)
VALUES ( 'polo shirt', 'red', 'M', 5);

INSERT INTO shirts (  article , color, shirt_size, last_worn)
VALUES ( 'tank top', 'white', 'S', 200);

INSERT INTO shirts (  article , color, shirt_size, last_worn)
VALUES ( 'tank top', 'blue', 'M', 15);

-- 1 Get all that data in there with a single line
select * from shirts;

--2 Add a new shirt, purple polo shirt, size M last worn 50 days ago
INSERT INTO shirts (article, color, shirt_size, last_worn)
VALUES ('polo shirt', 'purple', 'M', 50);

--3 SELECT all shirts but only print out article and color
SELECT article, color FROM shirts;

--4 SELECT all medium shirts and print out everything but shirt_id
SELECT article, color, shirt_size, last_worn FROM shirts
WHERE shirt_size = 'M';

--5 Update all polo shirts Change their size to L
UPDATE shirts 
SET shirt_size = 'L' 
WHERE article = 'polo shirt';

--6 Update the shirt last worn 15 days ago change last_worn to zero ('0')

UPDATE shirts 
SET last_worn = 0 
WHERE last_worn = 15;

--7 Update all white shirts and change size to 'XS' and color to 'off white'
UPDATE shirts
SET shirt_size ='XS', color='off white'
WHERE color = 'white';

--8 Delete all old shirts that were last worn 200 days ago
DELETE FROM shirts
WHERE last_worn = 200;

--9 Delete all tank tops. Your tastes have changed...
DELETE FROM shirts
WHERE article ='tank tops';

--10 Delete all shirts. You are doing some major spring cleaning!
DELETE FROM shirts;

--11 Drop the entire shirts table. Scraping everything..
DROP Table shirts;












