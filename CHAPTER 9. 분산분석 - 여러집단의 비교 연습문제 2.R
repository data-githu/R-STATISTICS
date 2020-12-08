분산분석 : 여러집단의 비교
연습문제 9.2

다음은 4가지 종류의 잡지의 페이지 수를 기록한 표이다.
패션 = 172,286,163,205,197
요리 = 87,94,123,106,101
음식 = 82,153,87,103,96
과학 = 104,136,98,207,146

> magazine = c(172,286,163,205,197,87,94,123,106,101,82,153,87,103,96,104,136,98,207,146)
> pages = c(rep("F",5),rep("C",5),rep("M",5),rep("S",5))
> data = data.frame(magazine,pages)
> data
magazine pages
1       172     F
2       286     F
3       163     F
4       205     F
5       197     F
6        87     C
7        94     C
8       123     C
9       106     C
10      101     C
11       82     M
12      153     M
13       87     M
14      103     M
15       96     M
16      104     S
17      136     S
18       98     S
19      207     S
20      146     S
> result = aov(magazine~pages, data = data)
> anova(result)
Analysis of Variance Table

Response: magazine
Df Sum Sq Mean Sq F value   Pr(>F)   
pages      3  34289 11429.5  8.6885 0.001189 **
  Residuals 16  21048  1315.5                    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

유의수준 5% 에서 4가지 종류의 잡지의 평균 페이지 수가 같은지 검정하시오!
귀무가설 :4종류의 잡지 페이지 수 평균이 모두 같다.
귀무가설을 기각합니다.