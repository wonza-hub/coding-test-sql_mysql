-- 코드를 입력하세요
# 동일한 회원이 동일한 상품을 재구매한 데이터
# 회원 ID와 재구매한 상품 ID를 출력
# 회원 ID를 기준으로 오름차순 정렬/상품 ID를 기준으로 내림차순 정렬
SELECT USER_ID,PRODUCT_ID
FROM ONLINE_SALE
GROUP BY 1,2
HAVING COUNT(PRODUCT_ID)>1
ORDER BY 1 ASC, 2 DESC