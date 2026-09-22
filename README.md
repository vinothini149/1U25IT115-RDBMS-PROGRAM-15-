# PL/SQL IF-ELSE – Student Pass or Fail

## Assignment

Write a PL/SQL program using an IF-ELSE statement to check whether a student has passed or failed based on marks.

## Condition

- If marks are greater than or equal to 40, display `PASS`.
- If marks are less than 40, display `FAIL`.

## Example

Input:

35

Output:

FAIL

Input:

40

Output:

PASS

Input:

75

Output:

PASS

## Instructions for Students

1. Open `starter.sql`.
2. Complete the PL/SQL program.
3. Save your completed program as `answers.sql`.
4. Commit the changes.
5. Push the changes to GitHub.
6. GitHub Actions will automatically test your program.

## Test Cases

| Marks | Expected Output |
|------:|-----------------|
| 35 | FAIL |
| 40 | PASS |
| 75 | PASS |
| 20 | FAIL |
| 100 | PASS |

## Important

The program must use:

- PL/SQL
- IF-ELSE statement
- DBMS_OUTPUT.PUT_LINE

Do not modify the files inside the `tests` folder or `.github/workflows` folder.

Only submit your completed program as:

`answers.sql`
