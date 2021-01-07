분할표 자료분석 : 범주들의 관계
연습문제 11.5

남성과 여성의 아침식사 메뉴의 차이를 알아보고자 한다.
아침식사를 판매하는 유명한 가게에서 무작위로 선택된 
남성과 여성이 주문한 아침식사는 다음과 같다.
유의수준 10%에서 동질성 검정을 하여라.

귀무가설 : 남성과 여성의 아침식사 메뉴에는 차이가 없다.
p-value = 0.2601 > 0.1 , 귀무가설을 기각할수 없다.


> row1 = c(47,35,28,53)
> row2 = c(65,59,55,60)

> data.table = rbind(row1,row2)
> chisq.test(data.table)

Pearson's Chi-squared test

data:  data.table
X-squared = 4.0125, df = 3, p-value = 0.2601