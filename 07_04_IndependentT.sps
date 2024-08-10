* Encoding: UTF-8.
* 07_04_IndependentT.

* Dataset: 07_04_IndependentT.sav.

* Need to define categories; can dichotomize.
T-TEST GROUPS=pager(0 1)
  /MISSING=ANALYSIS
  /VARIABLES=age income
  /CRITERIA=CI(.95).

EXAMINE VARIABLES=income BY pager
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.

