* Encoding: UTF-8.
* 06_05_Contingency.

* Dataset: StateTrends.sav.

* Use Descriptive Statistics > Crosstabs... and NOT Tables...

* DEFAULT CROSSTABS.

* Two tables of two dimensions each.
CROSSTABS
  /TABLES=region has_nba BY psych_region
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.
* Note that 48 observations is not enough for the first table, 
  with many observed (and expected) frequencies below 5.

* A single table of three dimensions.
CROSSTABS
  /TABLES=region BY has_nba BY psych_region
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

* CROSSTABS WITH OPTIONS

* Adds row and column percentages, chi-squared test, and a
  clustered bar chart.
CROSSTABS
  /TABLES=region BY psych_region
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT ROW COLUMN 
  /COUNT ROUND CELL
  /BARCHART.
* Again, 48 observations is not enough for this table, 
  with many observed (and expected) frequencies below 5.
