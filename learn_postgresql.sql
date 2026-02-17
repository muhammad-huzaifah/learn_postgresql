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
