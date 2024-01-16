CREATE TABLE masina (
    id_masina NUMBER PRIMARY KEY,
    brand VARCHAR2(50),
    an_fabricatie NUMBER,
    km NUMBER
);

CREATE TABLE intrari_service (
    id_service NUMBER PRIMARY KEY,
    id_masina NUMBER,
    data_service DATE,
    km_service NUMBER,
    FOREIGN KEY (id_masina) REFERENCES masina(id_masina)
);

CREATE OR REPLACE TRIGGER verif_service_km
BEFORE INSERT OR UPDATE ON intrari_service
FOR EACH ROW
DECLARE
    km_actuali NUMBER;
BEGIN
    SELECT km INTO km_actuali
    FROM masina
    WHERE id_masina = :NEW.id_masina;

    IF :NEW.km_service < km_actuali THEN
        raise_application_error(-20001, 'Kilometrajul intrarii service nu poate fi mai mic decat ultimul kilometraj al masinii!');
    END IF;
END;