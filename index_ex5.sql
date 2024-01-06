CREATE TABLE masina (
    vin VARCHAR2(50) PRIMARY KEY,
    brand VARCHAR2(50),
    model VARCHAR2(50),
    tip_caroserie VARCHAR2(50),
    an_fabricatie NUMBER,
    km NUMBER
);

CREATE INDEX idx_masina_vin
ON masina(vin);

SELECT *
FROM masina
WHERE vin = '5YJSA1CN5DFP00001';


CREATE BITMAP INDEX idx_masina_tip_caroserie
ON masina(tip_caroserie);

SELECT *
FROM masina
WHERE tip_caroserie = 'Sedan';