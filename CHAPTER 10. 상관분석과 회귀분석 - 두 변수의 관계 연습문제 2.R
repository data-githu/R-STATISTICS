상관분석과 회귀분석 : 두 변수의 관계
연습문제 10.2

자동차의 무게와 연비의 관계를 알아보기 위해 자동차 12대를 대상으로 무게(단위: 파운드)와
연비(단위 : mi/g) 를 측정한 표이다.

(1) 산점도를 그리시오.
> weight = c(2715,2570,2610,2750,3000,3410,3640,3700,3880,3900,4060,4710)
> mile = c(24,28,29,38,25,22,20,26,21,18,18,15)
> plot(weight, mile, pch = 16)

(2) 상관계수를 구하시오.
> weight = c(2715,2570,2610,2750,3000,3410,3640,3700,3880,3900,4060,4710)
> mile = c(24,28,29,38,25,22,20,26,21,18,18,15)
> cor(weight,mile)
[1] -0.7998603

(3) 자동차의 무게에 따른 연비를 알아보기 위한 회귀식을 구하시오.
y = 48.4086 - 0.007251x

(4) (1)에서 적합된 회귀식의 결정계수를 구하시오.
0.6398

> weight = c(2715,2570,2610,2750,3000,3410,3640,3700,3880,3900,4060,4710)
> mile = c(24,28,29,38,25,22,20,26,21,18,18,15)
> x = weight
> y = mile
> lsm = lm(y~x)
> summary(lsm)

Call:
  lm(formula = y ~ x)

Residuals:
  Min     1Q Median     3Q    Max 
-4.721 -1.833 -1.312  0.731  9.532 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept) 48.408625   5.977998   8.098 1.06e-05 ***
  x           -0.007251   0.001721  -4.214  0.00179 ** 
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 3.902 on 10 degrees of freedom
Multiple R-squared:  0.6398,	Adjusted R-squared:  0.6038 
F-statistic: 17.76 on 1 and 10 DF,  p-value: 0.001788


(5) 분산분석표를 작성하고, (1)에서 적합된 회귀식을 검정하시오.
유의수준 5%에서 귀무가설을 기각하며 
자동차의 무게와 연비의 단순회귀모형이 적합하다고 할 수 있습니다.

> weight = c(2715,2570,2610,2750,3000,3410,3640,3700,3880,3900,4060,4710)
> mile = c(24,28,29,38,25,22,20,26,21,18,18,15)
> x = weight
> y = mile
> lsm = lm(y~x)
> anova(lsm)
Analysis of Variance Table

Response: y
Df Sum Sq Mean Sq F value   Pr(>F)   
x          1 270.41 270.412  17.761 0.001788 **
  Residuals 10 152.25  15.225                    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1