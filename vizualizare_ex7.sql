CREATE TABLE masina_serv (
    vin VARCHAR(17) PRIMARY KEY,
    km NUMBER,
    marca VARCHAR(50),
    model VARCHAR(50),
    proprietar VARCHAR(100),
    data_inmatriculare DATE,
    tip_asigurare VARCHAR(50)
);

INSERT INTO masina_serv (vin, km, marca, model, proprietar, data_inmatriculare, tip_asigurare)
VALUES ('1HGCM82633A123456', 50000, 'Renault', 'Arkana', 'Alex Mihai', TO_DATE('2023-02-01','YYYY-MM-DD'), 'RCA+Casco');

CREATE OR REPLACE VIEW vizualizare_op_service AS
SELECT vin, km, marca, model
FROM masina_serv;