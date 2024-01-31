-- Initialisation des tables
INSERT INTO Country(id, code, name) VALUES
-- Les clés sont auto-générées, donc on ne les spécifie pas
    (default, 'FR', 'France'), -- id = 1
    (default, 'UK', 'United Kingdom'), -- id = 2
    (default, 'US', 'United States of America'); -- id = 3
-- On peut fixer la valeur des clés auto-générées, mais il faudrait ensuite
-- réinitialiser le compteur de clé auto-générée
-- Attention : la syntaxe est différente selon le SGBD utilisé
-- ALTER TABLE Country ALTER COLUMN id RESTART WITH 4;

INSERT INTO CITY(name, population, country_id) VALUES
    ('Paris', 12, SELECT id FROM Country WHERE code = 'FR'),
    ('London', 18, SELECT id FROM Country WHERE code = 'UK'),
    ('New York', 27, SELECT id FROM Country WHERE code = 'US');
