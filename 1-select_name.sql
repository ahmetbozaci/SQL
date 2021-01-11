-- 1 - Name start with y-
SELECT name FROM world
WHERE name LIKE 'Y%';

-- 2 - Name end with -y
SELECT name FROM world
WHERE name LIKE '%Y';

-- 3 - Name include x 
SELECT name FROM world
WHERE name LIKE '%x%';

-- 4 - Name end with -land 
SELECT name FROM world
WHERE name LIKE '%land';

-- 5 - Name start with C end with -ia 
SELECT name FROM world
WHERE name LIKE 'C%' AND name LIKE '%ia';

-- 6 - Name start with C end with -ia 
SELECT name FROM world
WHERE name LIKE 'C%%ia';

SELECT name FROM world
WHERE name LIKE '%oo%';

-- 7 - Name has at least 3 'a'
SELECT name FROM world
WHERE name LIKE '%a%a%a%';

-- 8 
SELECT name FROM world
WHERE name LIKE '_t%'
ORDER BY name;

-- 9
SELECT name FROM world
WHERE name LIKE '%o__o%';

-- 10 
SELECT name FROM world
WHERE name LIKE '____'

-- 11
SELECT name
FROM world
WHERE name LIKE capital;

-- 12
SELECT name
FROM world
WHERE capital LIKE '%_City';

SELECT name
FROM world
WHERE capital = concat(name, ' City');

-- 13
SELECT capital, name
FROM world
WHERE capital LIKE concat('%',name, '%');

-- 14
SELECT capital, name
FROM world
WHERE capital LIKE concat('%',name,'%')
AND capital != name;

-- 15
SELECT name, 
REPLACE(capital, name, '')
FROM world
WHERE capital LIKE concat('%',name,'%')
AND capital != name;
