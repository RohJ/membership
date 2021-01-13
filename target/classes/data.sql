INSERT INTO role (name) 
SELECT * FROM (SELECT 'ROLE_ADMIN') AS tmp
WHERE NOT EXISTS (
	SELECT name FROM role WHERE name = 'ROLE_ADMIN'
) LIMIT 1;

INSERT INTO role (name) 
SELECT * FROM (SELECT 'ROLE_USER') AS tmp
WHERE NOT EXISTS (
	SELECT name FROM role WHERE name = 'ROLE_USER'
) LIMIT 1;

INSERT INTO user (username, password)
SELECT * FROM (SELECT 'admin', '$2a$10$QTOnuHC6u0sTx404l1mDPOYQLznwdGTFOv8LNhtYTj2EKCeSX/exm') AS tmp
WHERE NOT EXISTS (
	SELECT username, password FROM user where username = 'admin'
) LIMIT 1;

INSERT INTO user_roles (users_id, roles_id)
SELECT * FROM (SELECT '1' AS users_id, '1' AS roles_id) AS tmp
WHERE NOT EXISTS (
	SELECT users_id, roles_id FROM user_roles WHERE users_id = '1' AND roles_id = '1'
) LIMIT 1;

INSERT INTO user_roles (users_id, roles_id)
SELECT * FROM (SELECT '1' AS users_id, '2' AS roles_id) AS tmp
WHERE NOT EXISTS (
	SELECT users_id, roles_id FROM user_roles WHERE users_id = '1' AND roles_id = '2'
) LIMIT 1;

INSERT INTO ministry (ministryname) 
SELECT * FROM (SELECT 'Media') AS tmp
WHERE NOT EXISTS (
	SELECT ministryname FROM ministry WHERE ministryname = 'Media'
) LIMIT 1;

INSERT INTO ministry (ministryname) 
SELECT * FROM (SELECT 'Worship') AS tmp
WHERE NOT EXISTS (
	SELECT ministryname FROM ministry WHERE ministryname = 'Worship'
) LIMIT 1;

INSERT INTO ministry (ministryname) 
SELECT * FROM (SELECT 'Kingdom Kids') AS tmp
WHERE NOT EXISTS (
	SELECT ministryname FROM ministry WHERE ministryname = 'Kingdom Kids'
) LIMIT 1;

INSERT INTO ministry (ministryname) 
SELECT * FROM (SELECT 'Cell Leader') AS tmp
WHERE NOT EXISTS (
	SELECT ministryname FROM ministry WHERE ministryname = 'Cell Leader'
) LIMIT 1;

INSERT INTO ministry (ministryname) 
SELECT * FROM (SELECT 'Pastoral') AS tmp
WHERE NOT EXISTS (
	SELECT ministryname FROM ministry WHERE ministryname = 'Pastoral'
) LIMIT 1;

INSERT INTO ministry (ministryname) 
SELECT * FROM (SELECT 'Evangelism') AS tmp
WHERE NOT EXISTS (
	SELECT ministryname FROM ministry WHERE ministryname = 'Evangelism'
) LIMIT 1;

INSERT INTO ministry (ministryname) 
SELECT * FROM (SELECT 'Serving') AS tmp
WHERE NOT EXISTS (
	SELECT ministryname FROM ministry WHERE ministryname = 'Serving'
) LIMIT 1;

INSERT INTO ministry (ministryname) 
SELECT * FROM (SELECT 'Teens') AS tmp
WHERE NOT EXISTS (
	SELECT ministryname FROM ministry WHERE ministryname = 'Teens'
) LIMIT 1;

INSERT INTO ministry (ministryname) 
SELECT * FROM (SELECT 'Marriage') AS tmp
WHERE NOT EXISTS (
	SELECT ministryname FROM ministry WHERE ministryname = 'Marriage'
) LIMIT 1;

INSERT INTO cellgroup (name, area)
SELECT * FROM (SELECT 'COX TOWN' AS name, 'COX TOWN' AS area) AS tmp
WHERE NOT EXISTS (
	SELECT name, area FROM cellgroup WHERE name = 'COX TOWN'
) LIMIT 1;

INSERT INTO cellgroup (name, area)
SELECT * FROM (SELECT 'COOOKE TOWN' AS name, 'COOOKE TOWN' AS area) AS tmp
WHERE NOT EXISTS (
	SELECT name, area FROM cellgroup WHERE name = 'COOOKE TOWN'
) LIMIT 1;

INSERT INTO cellgroup (name, area)
SELECT * FROM (SELECT 'MAHADEVAPURA' AS name, 'MAHADEVAPURA' AS area) AS tmp
WHERE NOT EXISTS (
	SELECT name, area FROM cellgroup WHERE name = 'MAHADEVAPURA'
) LIMIT 1;

INSERT INTO cellgroup (name, area)
SELECT * FROM (SELECT 'INDIRANAGAR' AS name, 'INDIRANAGAR' AS area) AS tmp
WHERE NOT EXISTS (
	SELECT name, area FROM cellgroup WHERE name = 'INDIRANAGAR'
) LIMIT 1;

INSERT INTO cellgroup (name, area)
SELECT * FROM (SELECT 'BANASWADI' AS name, 'BANASWADI' AS area) AS tmp
WHERE NOT EXISTS (
	SELECT name, area FROM cellgroup WHERE name = 'BANASWADI'
) LIMIT 1;

INSERT INTO cellgroup (name, area)
SELECT * FROM (SELECT 'KAMMANAHALLI' AS name, 'KAMMANAHALLI' AS area) AS tmp
WHERE NOT EXISTS (
	SELECT name, area FROM cellgroup WHERE name = 'KAMMANAHALLI'
) LIMIT 1;

INSERT INTO cellgroup (name, area)
SELECT * FROM (SELECT 'KORAMANGALA' AS name, 'KORAMANGALA' AS area) AS tmp
WHERE NOT EXISTS (
	SELECT name, area FROM cellgroup WHERE name = 'KORAMANGALA'
) LIMIT 1;

INSERT INTO cellgroup (name, area)
SELECT * FROM (SELECT 'RAJAJINAGAR' AS name, 'RAJAJINAGAR' AS area) AS tmp
WHERE NOT EXISTS (
	SELECT name, area FROM cellgroup WHERE name = 'RAJAJINAGAR'
) LIMIT 1;

INSERT INTO cellgroup (name, area)
SELECT * FROM (SELECT 'HENNUR' AS name, 'HENNUR' AS area) AS tmp
WHERE NOT EXISTS (
	SELECT name, area FROM cellgroup WHERE name = 'HENNUR'
) LIMIT 1;

INSERT INTO cellgroup (name, area)
SELECT * FROM (SELECT 'JALLAHALLI' AS name, 'JALLAHALLI' AS area) AS tmp
WHERE NOT EXISTS (
	SELECT name, area FROM cellgroup WHERE name = 'JALLAHALLI'
) LIMIT 1;

INSERT INTO cellgroup (name, area)
SELECT * FROM (SELECT 'BENSON TOWN' AS name, 'BENSON TOWN' AS area) AS tmp
WHERE NOT EXISTS (
	SELECT name, area FROM cellgroup WHERE name = 'BENSON TOWN'
) LIMIT 1;

INSERT INTO cellgroup (name, area)
SELECT * FROM (SELECT 'HORMAVU' AS name, 'HORMAVU' AS area) AS tmp
WHERE NOT EXISTS (
	SELECT name, area FROM cellgroup WHERE name = 'HORMAVU'
) LIMIT 1;

INSERT INTO cellgroup (name, area)
SELECT * FROM (SELECT 'DODDA BANASWADI' AS name, 'DODDA BANASWADI' AS area) AS tmp
WHERE NOT EXISTS (
	SELECT name, area FROM cellgroup WHERE name = 'DODDA BANASWADI'
) LIMIT 1;

INSERT INTO cellgroup (name, area)
SELECT * FROM (SELECT 'SARJAPUR' AS name, 'SARJAPUR' AS area) AS tmp
WHERE NOT EXISTS (
	SELECT name, area FROM cellgroup WHERE name = 'SARJAPUR'
) LIMIT 1;
