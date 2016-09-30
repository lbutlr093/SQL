SELECT /*+ PARALLEL(AUTO) */ COUNT(*) FROM
(
SELECT PHONE_NUMBER
FROM TABLESPACE.TABLENAME
WHERE SPECIFIC_CODE = 1
AND NOT REGEXP_LIKE ( PHONE_NUMBER, '^\([2-9]{1}[0-9]{2}\)[\ |\-|\.]?[2-9]{1}[0-9]{2}[\ |\-|\.]?[0-9]{4,}$|^[2-9]{1}[0-9]{2}[\ |\-|\.]?[2-9]{1}[0-9]{2}[\ |\-|\.]?[0-9]{4,}$')

UNION

SELECT PHONE_NUMBER
FROM TABLESPACE.TABLENAME
WHERE SPECIFIC_CODE = 1
AND REGEXP_LIKE ( PHONE_NUMBER, '^\([2-9]{1}[0-9]{2}\)[\ |\-|\.]?[5]{3}[\ |\-|\.]?[0-9]{4,}$|^[2-9]{1}[0-9]{2}[\ |\-|\.]?[5]{3}[\ |\-|\.]?[0-9]{4,}$') );
