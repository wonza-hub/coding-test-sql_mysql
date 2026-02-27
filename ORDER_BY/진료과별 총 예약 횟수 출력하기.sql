SELECT MCDP_CD '진료과코드',COUNT(APNT_NO) '5월예약건수'
FROM APPOINTMENT 
WHERE DATE_FORMAT(APNT_YMD,'%Y-%m')='2022-05'
GROUP BY MCDP_CD
ORDER BY 5월예약건수 ASC,진료과코드 ASC
-- 한글 컬럼명 정렬 시 ''나 ""로 감싸면 문자열로 인식하므로 감싸면 안됨
-- 아래만 가능함
-- 따옴표 없음, ``, 컬럼 순서(1,2,3...)
-- 또는 ORDER BY `5월예약건수`, `진료과코드`
-- 또는 ORDER BY 2 ASC,1 ASC