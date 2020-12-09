분산분석 : 여러집단의 비교
연습문제 9.4

전국에 있는 여자 고등학생들의 100m 달리기 평균 기록이 같은지 알고자 한다.
5개 지역의 여자 고등학생들을 임의로 조사한 결과는 다음과 같다.
유의수준 1%에서 검정하라

귀무가설 : 5개 지역의 여자 고등학생들의 100m 달리기 평균 기록은 모두 같다.
귀무가설을 기각할 수 없다.


> run = c(19.3,19.1,19.4,19.5,19.9,19.5,19.4,19.2,19.4,19.5,19.6,19.1,19.2,19.6,19.5,19.4,20.1,20.2,19.6,19.8)
> region = c(rep("Gang",4),rep("Jeon",4),rep("Chung",4),rep("Kyung",4),rep("Gyung",4))
> data = data.frame(run,region)
> data
run region
1  19.3   Gang
2  19.1   Gang
3  19.4   Gang
4  19.5   Gang
5  19.9   Jeon
6  19.5   Jeon
7  19.4   Jeon
8  19.2   Jeon
9  19.4  Chung
10 19.5  Chung
11 19.6  Chung
12 19.1  Chung
13 19.2  Kyung
14 19.6  Kyung
15 19.5  Kyung
16 19.4  Kyung
17 20.1  Gyung
18 20.2  Gyung
19 19.6  Gyung
20 19.8  Gyung

> result = aov(run~region, data = data)
> anova(result)
Analysis of Variance Table

Response: run
Df Sum Sq Mean Sq F value  Pr(>F)  
region     4 0.9030 0.22575  4.2196 0.01741 *
  Residuals 15 0.8025 0.05350                  
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1