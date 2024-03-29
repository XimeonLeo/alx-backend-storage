-- script that creates a function `SafeDiv`
-- that divides (and returns) the first by the
-- second number or returns 0
-- if the second number is equal to 0.
DELIMITER $$ ;
CREATE FUNCTION SafeDiv(
	a INT,
	b INT
)
RETURNS FLOAT
DETERMINISTIC
BEGIN
	DECLARE container FLOAT;
	IF b = 0 THEN
		RETURN 0;
        END IF;
        SET container = (a * 1.0) / b;
        RETURN container;
END;$$
DELIMITER ;
