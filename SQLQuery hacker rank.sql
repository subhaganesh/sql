--hacker rank
SELECT
    city,
    CHAR_LENGTH(city)
FROM STATION
WHERE city = (
    SELECT
        MIN(city)
    FROM STATION
    WHERE CHAR_LENGTH(city) = (
        SELECT
            MIN(CHAR_LENGTH(city))
        FROM STATION
    )
)
OR city = (
    SELECT
        MIN(city)
    FROM STATION
    WHERE CHAR_LENGTH(city) = (
        SELECT
            MAX(CHAR_LENGTH(city))
        FROM STATION
    )
);