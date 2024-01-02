DECLARE
    /*exceptie definita de mine*/
    conditie_definita EXCEPTION;

    var BOOLEAN := false;
BEGIN
    IF var = FALSE THEN
        /* ridicam exceptia definita mai sus*/
        RAISE conditie_definita;
    ELSE
        DBMS_OUTPUT.PUT_LINE('"var" este TRUE');
    END IF;
EXCEPTION
    WHEN conditie_definita THEN
        DBMS_OUTPUT.PUT_LINE('S-a declansat exceptia definita de mine. "var" este egal cu FALSE.');
END;

DECLARE
    de_impartit NUMBER := 5;
    impartitor NUMBER := 0;
BEGIN
    IF impartitor = 0 THEN
        /*ridicam exceptia predefinita zero_divide*/
        RAISE ZERO_DIVIDE;
    ELSE
        DBMS_OUTPUT.PUT_LINE(de_impartit / impartitor);
    END IF;
END;