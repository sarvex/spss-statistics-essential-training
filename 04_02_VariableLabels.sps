* Encoding: UTF-8.
* 04_02_VariableLabels.
  
VARIABLE LABELS
  state "State"
  state_code "State Code"
  population "Population"
  sq_miles "Square Miles"
  pop_density "Population Density"
  region "Region of US"
  psych_region "Psychological Region"
  psy_reg "Psy Region"
  b5_1 "Extraversion"
  b5_2 "Agreeableness"
  b5_3 "Conscientiousness"
  b5_4 "Neuroticism"
  b5_5 "Openness"
  gt01 "Data Science"
  gt02 "Artificial Intelligence"
  gt03 "Machine Learning"
  gt04 "Data Analysis"
  gt05 "Business Intelligence"
  gt06 "Spreadsheet"
  gt07 "Statistics"
  gt08 "Art"
  gt09 "Dance"
  gt10 "Museum"
  gt11 "Basketball"
  gt12 "Football"
  gt13 "Baseball"
  gt14 "Soccer"
  gt15 "Hockey"
  has_nba "Has NBA Team"
  has_nfl "Has NFL Team"
  has_mlb "Has MLB Team"
  has_mls "Has MLS Team"
  has_nhl "Has NHL Team"
  has_any "Has Any Team" .

* It is also possible to rename the variables, which is separate from labels.
* Format: oldname = newname.
* RENAME VARIABLES
  b5_1 = Extraversion
  b5_2 = Agreeableness
  b5_3 = Conscientiousness
  b5_4 = Neuroticism
  b5_5 = Openness .

* Restoring original variable names.
* RENAME VARIABLES
  Extraversion = b5_1
  Agreeableness = b5_2
  Conscientiousness = b5_3
  Neuroticism = b5_4
  Openness = b5_5 .

