상관분석과 회귀분석 : 두 변수의 관계
연습문제 10.3

한 잡지에 음식점 9곳의 할인 쿠폰이 실려 있다. 
페이지에 따른 할인 가격(단위 : 천 원)을 알아보고자 한다.

(1) 산점도를 그리시오.
> page = c(4,14,25,32,43,57,72,85,90)
> saleprice = c(16,19,15,17,19,15,16,15,17)
> plot(page, saleprice, pch = 16)

(2) 상관계수를 구하고 어떤 관계가 있는지 설명하시오.
약한 음의 상관관계

> page = c(4,14,25,32,43,57,72,85,90)
> saleprice = c(16,19,15,17,19,15,16,15,17)
> cor(page,saleprice)
[1] -0.2751612


(3) 회귀식을 구하시오.
y = 17.21757 - 0.01412x

(4) 결정계수를 구하시오.
0.07571

> page = c(4,14,25,32,43,57,72,85,90)
> saleprice = c(16,19,15,17,19,15,16,15,17)
> x = page
> y = saleprice
> lsm = lm(y~x)
> summary(lsm)

Call:
  lm(formula = y ~ x)

Residuals:
  Min     1Q Median     3Q    Max 
-1.865 -1.161 -0.201  1.053  2.390 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept) 17.21757    1.03004  16.715 6.71e-07 ***
  x           -0.01412    0.01865  -0.757    0.474    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.634 on 7 degrees of freedom
Multiple R-squared:  0.07571,	Adjusted R-squared:  -0.05633 
F-statistic: 0.5734 on 1 and 7 DF,  p-value: 0.4736


(5) 분산분석표를 작성하고, 적합된 회귀식을 검정하시오.
유의수준 5% 에서 귀무가설을 기각할 수 없어 단순회귀모형이 적합하다고 할 수 없습니다.

> anova(lsm)
Analysis of Variance Table

Response: y
Df  Sum Sq Mean Sq F value Pr(>F)
x          1  1.5311  1.5311  0.5734 0.4736
Residuals  7 18.6911  2.6702