CREATE OR REPLACE FUNCTION subtract_numbers(
    p_num1 IN NUMBER,
    p_num2 IN NUMBER
) RETURN NUMBER
IS
    v_result NUMBER;
BEGIN
    v_result := p_num1 - p_num2;
    RETURN v_result;

EXCEPTION
    WHEN OTHERS THEN
        RAISE; -- Re-raise the exception for further handling
END;
/