****** Empirical Results ******

****** Deleting outlier
drop if agediff <= 13
drop if agediff >= 45
gen lgwage = log(firstwage)

****** Using age as dependent variable
***** Baseline model
** Model 0
reg agediff educ_degree, r
** Model 1
reg agediff educ_degree i.WAVE i.area, r
** Model 2
reg agediff educ_degree lgwage i.WAVE i.area, r
** Model 3
** Model 4

***** Tobit Model
** Model 0
tobit agediff educ_degree
** model 1
tobit agediff educ_degree i.WAVE i.area
** model 2
tobit agediff educ_degree lgwage i.WAVE i.area 

****** Using number of kids as dependent variable
***** Baseline model
** Model 0
reg numkids educ_degree, r
** Model 1
reg numkids educ_degree i.WAVE i.area, r
** Model 2
reg numkids educ_degree lgwage i.WAVE i.area, r
** Model 3

** Model 4

***** Tobit Model
** Model 0
tobit numkids educ_degree
** model 1
tobit numkids educ_degree i.WAVE i.area
** model 2
tobit numkids educ_degree lgwage i.WAVE i.area 

