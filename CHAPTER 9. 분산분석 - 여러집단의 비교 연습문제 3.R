분산분석 : 여러집단의 비교
연습문제 9.3

수업방식이 다른 통계학 분반의 기말고사 성적의 평균이 같은지 알고자 한다.
다음은 각 수업방식별로 몇 분반으ㅏㄹ 임의로 선택하여 기말고사 성적을 정리한 표이다.
유의수준 5%에서 검정하시오!
  
귀무가설 : 수업방식이 다른 통계학 분반의 기말고사 성적의 평균이 모두 같다.
귀무가설을 기각할 수 없습니다.

온라인 = 72,84,77,80,81
혼합수업 = 72,84,77,80,81
면대면 수업 = 80,78,84,81,86,79,82

> grade = c(72,84,77,80,81,83,73,84,81,80,78,84,81,86,79,82)
> class = c(rep("online",5),rep("mix",4),rep("face-to-face",7))
> data = data.frame(grade, class)
> data
grade        class
1     72       online
2     84       online
3     77       online
4     80       online
5     81       online
6     83          mix
7     73          mix
8     84          mix
9     81          mix
10    80 face-to-face
11    78 face-to-face
12    84 face-to-face
13    81 face-to-face
14    86 face-to-face
15    79 face-to-face
16    82 face-to-face

> result = aov(grade~class, data = data)
> anova(result)
Analysis of Variance Table

Response: grade
Df  Sum Sq Mean Sq F value Pr(>F)
class      2  20.173  10.087  0.6388 0.5437
Residuals 13 205.264  15.790   