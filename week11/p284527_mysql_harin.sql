-- 조건에 맞는 사원 정보 조회하기
SELECT SUM(SCORE) AS SCORE, G.EMP_NO, E.EMP_NAME, E.POSITION, E.EMAIL
FROM HR_EMPLOYEES E
         INNER JOIN HR_GRADE G ON E.EMP_NO = G.EMP_NO
GROUP BY YEAR, EMP_NO
HAVING G.YEAR = '2022'
ORDER BY 1 DESC
    LIMIT 1;