분할표 자료분석 : 범주들의 관계
연습문제 11.2

30대 600명을 대상으로 그들의 연봉과 학력이 관계가 있는지 알기 위하여 조사한 결과이다.
괄호 속의 값은 기대도수를 정리한 것이다.
유의수준 5% 에서 독립성 검정을 하시오.
귀무가설 : 연봉과 학력은 관계가 없다.
p-value < 2.2e-16 < 0.05 이므로 귀무가설을 기각합니다.

> row1 = c(15,25,10,5)
> row2 = c(20,40,70,30)
> row3 = c(10,20,40,55)
> row4 = c(5,10,20,60)
> row5= c(0,5,10,150)

> data.table = rbind(row1,row2,row3,row4,row5)
> chisq.test(data.table)

Pearson's Chi-squared test

data:  data.table
X-squared = 255.77, df = 12, p-value < 2.2e-16

