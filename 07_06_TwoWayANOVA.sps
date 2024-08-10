* Encoding: UTF-8.
* 07_06_TwoWayANOVA.

* Dataset: 07_06_TwoWayANOVA.sav.

* BOXPLOTS.

EXAMINE VARIABLES=Rating BY Content BY Platform
  /PLOT=BOXPLOT
  /STATISTICS=NONE
  /NOTOTAL.

* BAR CHARTS. 

GRAPH
  /BAR(GROUPED)=MEAN(Rating) BY Content BY Platform
  /INTERVAL CI(95.0).

* ANOVA.

UNIANOVA Rating BY Platform Content
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /CRITERIA=ALPHA(0.05)
  /DESIGN=Platform Content Platform*Content.


