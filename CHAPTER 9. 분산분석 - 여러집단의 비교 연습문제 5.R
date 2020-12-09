분산분석 : 여러집단의 비교
연습문제 9.5

3가지 유형의 눈 상태에 따라 스키장의 하루 평균 방문자 수가 같은지를 알아보고자 한다.
(1) 유의수준 5%에서는 어떠한 결론을 내릴 수 있는가?
귀무가설 : 3가지 유형의 눈 상태에 따라 스키장 하루 평균 방문자 수가 모두 같다.
귀무가설을 기각할 수 없다.
(2) 유의수준 10%로 수정하면 결론은 어떻게 달라지는가?
귀무가설을 기각할 수 있다.

> people = c(1210,1080,1537,941,2107,1149,862,1870,1528,1382,2846,1638,2019,1178,2233)
> snow = c(rep("A",4),rep("B",6),rep("C",5))
> data = data.frame(people, snow)
> data
people snow
1    1210    A
2    1080    A
3    1537    A
4     941    A
5    2107    B
6    1149    B
7     862    B
8    1870    B
9    1528    B
10   1382    B
11   2846    C
12   1638    C
13   2019    C
14   1178    C
15   2233    C
> result = aov(people~snow, data = data)
> anova(result)
Analysis of Variance Table

Response: people
Df  Sum Sq Mean Sq F value  Pr(>F)  
snow       2 1468909  734455  3.1264 0.08075 .
Residuals 12 2819077  234923                  
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1