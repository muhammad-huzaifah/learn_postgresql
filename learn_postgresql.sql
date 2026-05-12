CREATE TABLE cities (
                        name VARCHAR(50),
                        country VARCHAR(50),
                        population INTEGER,
                        area INTEGER
);

INSERT INTO cities (name, country, population, area)
VALUES
    ('Delhi', 'India', 28125000, 2240),
    ('Shanghai', 'China', 22125000, 4015),
    ('Sao Paulo', 'Brazil', 29835000, 3043);

SELECT * FROM learn_postgresql.cities;

SELECT name, country FROM learn_postgresql.cities;

SELECT area, name, population  FROM learn_postgresql.cities;
SELECT name, name, name  FROM learn_postgresql.cities;

SELECT name, population / area as population_per_area FROM learn_postgresql.cities;
SELECT name, population + area as population_per_area FROM learn_postgresql.cities;
SELECT name, population * area as population_per_area FROM learn_postgresql.cities;

SELECT name || country FROM learn_postgresql.cities;

SELECT name || ', ' || country FROM learn_postgresql.cities;

SELECT name || ', ' || country AS location FROM learn_postgresql.cities;

SELECT CONCAT(name, country) AS location FROM learn_postgresql.cities;

SELECT CONCAT(name, ', ', country) AS location FROM learn_postgresql.cities;

SELECT
    CONCAT(UPPER(name), ', ', UPPER(country)) AS location
FROM
    learn_postgresql.cities;

SELECT
    UPPER(CONCAT(name, ', ', country)) AS location
FROM
    learn_postgresql.cities;

SELECT name, area FROM learn_postgresql.cities WHERE area > 4000;

SELECT name, area FROM learn_postgresql.cities WHERE area = 8233;

SELECT name, area FROM learn_postgresql.cities WHERE area != 8233;

SELECT name, area FROM cities WHERE area <> 8233;

SELECT name, area FROM cities WHERE area BETWEEN 2000 AND 5000;

SELECT name, area FROM cities WHERE name NOT IN ('Delhi', 'Shanghai');

SELECT name, area FROM cities WHERE area NOT IN (3043, 8223);

SELECT name, area FROM cities WHERE area NOT IN (3043, 8223) OR name = 'Delhi' OR name = 'Tokyo';

