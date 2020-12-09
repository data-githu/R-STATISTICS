분산분석 : 여러집단의 비교
연습문제 9.6
시청자들이 자신이 좋아하는 뉴스 채널을 보는 평균시간(단위:분)이 같은지를 알고자 한다.
다음은 이름 조사한 결과이다. 유의수준 5%에서 검정하라.
KBS = 45,12,18,38,23,35
MBC = 15,43,68,50,31,22
SBS = 72,37,56,60,51


귀무가설 : 뉴스 채널을 보는 평균시간(단위:분)이 모두 같다.
귀무가설을 기각한다.

> time = c(45,12,18,38,23,35,15,43,68,50,31,22,72,37,56,60,51)
> TV = c(rep("KBS",6),rep("MBC",6),rep("SBS",5))
> data = data.frame(time, TV)
> data
time  TV
1    45 KBS
2    12 KBS
3    18 KBS
4    38 KBS
5    23 KBS
6    35 KBS
7    15 MBC
8    43 MBC
9    68 MBC
10   50 MBC
11   31 MBC
12   22 MBC
13   72 SBS
14   37 SBS
15   56 SBS
16   60 SBS
17   51 SBS
> result = aov(time~TV, data = data)
> anova(result)
Analysis of Variance Table

Response: time
Df Sum Sq Mean Sq F value  Pr(>F)  
TV         2 1967.9  983.96  4.0815 0.04013 *
  Residuals 14 3375.1  241.08                  
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1