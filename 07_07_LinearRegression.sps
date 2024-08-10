* Encoding: UTF-8.
* 07_07_LinearRegression.

* Dataset: demo.sav.

* Predicting "job satisfaction".

* Bivariate correlation matrix.
CORRELATIONS
  /VARIABLES=jobsat age marital ed income
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* Scatterplot matrix.
GRAPH
  /SCATTERPLOT(MATRIX)=jobsat age marital ed income
  /MISSING=LISTWISE.
* Manually "add fit line at total".

* Regression model.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT jobsat
  /METHOD=ENTER age marital ed income.
