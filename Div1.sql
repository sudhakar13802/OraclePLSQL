-- Sudfdfdfdfd
CREATE OR REPLACE FUNCTION divide_numbers(p_numerator NUMBER, p_denominator NUMBER)
RETURN NUMBER
IS
  v_result NUMBER;
BEGIN
  IF p_denominator = 0 THEN
    RAISE ZERO_DIVIDE_EXCEPTION;
  ELSE
    v_result := p_numerator / p_denominator;
  END IF;

  RETURN v_result;
-- This is the result
EXCEPTION
  WHEN ZERO_DIVIDE_EXCEPTION THEN
    RAISE;
  WHEN OTHERS THEN
    RAISE;
END;
/