-- PRODUCT 
-- PRODUCT_ID, PRODUCT_CODE, PRICE는 각각 상품 ID, 상품코드, 판매가
-- 상품 별로 중복되지 않는 8자리 상품코드 값을 가지며 앞 2자리는 카테고리 코드
-- 
--  만원 단위의 가격대 별로 상품 개수를 출력
-- 컬럼명은 PRICE_GROUP, PRODUCTS
--  가격대 정보는 각 구간의 최소금액(10,000원 이상 ~ 20,000 미만인 구간인 경우 10,000)으로 표시
-- 가격대를 기준으로 오름차순 정렬

-- 코드를 입력하세요
SELECT FLOOR(PRICE/10000) * 10000 AS PRICE_GROUP, COUNT(PRODUCT_ID) AS PRODUCTS
FROM PRODUCT 
GROUP BY PRICE_GROUP
ORDER BY PRICE_GROUP