CREATE TABLE masina_demo_select (
    id_masina NUMBER PRIMARY KEY,
    marca VARCHAR2(50),
    model VARCHAR2(50),
    an_fabricatie NUMBER,
    pret NUMBER
);

INSERT INTO masina_demo_select VALUES (1, 'Dacia', 'Logan', 2006, 7200);

/*sesiune1*/
SELECT * FROM masina_demo_select WHERE id_masina = 1;

/*sesiune2*/
SELECT * FROM masina_demo_select WHERE id_masina = 1;

/*sesiune3*/
UPDATE masina_demo_select SET pret = 7550 WHERE id_masina = 1;
SELECT * FROM masina_demo_select WHERE id_masina = 1;