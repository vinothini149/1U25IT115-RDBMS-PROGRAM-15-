-- PL/SQL Assignment
-- Program: Check whether a student has passed or failed
-- Pass mark: 40

SET SERVEROUTPUT ON;

-- Accept marks from the user
ACCEPT marks NUMBER PROMPT 'Enter student marks: '

DECLARE
    v_marks NUMBER := &marks;
BEGIN

    -- Write your IF-ELSE statement here

    -- If marks are greater than or equal to 40,
    -- display: PASS

    -- Otherwise,
    -- display: FAIL

END;
/ 
