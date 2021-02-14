상관분석과 회귀분석 : 두 변수의 관계
연습문제 10.1

임의로 선택된 10명의 국가대표 선수들을 자신이 받은 후원금의 횟수와 
액수(단위 : 억)의 관계를 알아보고자 다음의 자료를 얻었다.

(1) 산점도를 그려라
> count = c(1,3,2,1,5,5,4,3,1,4)
> salary = c(2,8,7,4,13,12,9,9,3,10)
> plot(count,salary,pch=16)

(2) 상관계수를 구하라
> count = c(1,3,2,1,5,5,4,3,1,4)
> salary = c(2,8,7,4,13,12,9,9,3,10)
> cor(count,salary)
[1] 0.9698106

(3) (2)에서 구한 상관계수로 볼 때, 후원금의 횟수와 액수는 어떠한 관계가 있는가?
강한 양의 상관관계

(4) 후원금의 횟수에 따른 후원금의 액수를 알아보기 위한 회귀식을 구하고,
적합된 회귀식의 결정계수를 구하라
y = 1.1528 + 2.2576 x
결정계수 : 0.9405

> count = c(1,3,2,1,5,5,4,3,1,4)
> salary = c(2,8,7,4,13,12,9,9,3,10)
> x = count
> y = salary
> lsm = lm(y~x)
> summary(lsm)

Call:
  lm(formula = y ~ x)

Residuals:
  Min       1Q   Median       3Q      Max 
-1.41048 -0.43341 -0.05459  0.58188  1.33188 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)   1.1528     0.6565   1.756    0.117    
x             2.2576     0.2007  11.248  3.5e-06 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.9605 on 8 degrees of freedom
Multiple R-squared:  0.9405,	Adjusted R-squared:  0.9331 
F-statistic: 126.5 on 1 and 8 DF,  p-value: 3.504e-06
