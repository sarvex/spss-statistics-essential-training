﻿* Encoding: UTF-8.
* 04_03_ValueLabels.

VALUE LABELS
  region
    1 "West"
    2 "Midwest"
    3 "South"
    4 "Northeast" /
  psych_region
    1 "Friendly and Conventional"
    2 "Relaxed and Creative"
    3 "Temperamental and Uninhibited" /
  psy_reg
    1 "Friendly"
    2 "Creative"
    3 "Uninhibited" /
  has_nba TO has_any
    0 "No"
    1 "Yes" .

* Example of how to specify more than one variable for a set of labels.
* VALUE LABELS
  var1
    1 "Label 1"
    2 "Label 2"
    3 "Label 3" /
  var2 var2 var4
    0 "No"
    1 "Yes" /
  q01 TO q12
    1 "Strongly Disagree"
    2 "Disagree"
    3 "Neutral"
    4 "Agree"
    5 "Strongly Agree" /
  scale1 TO scale4 scale6 TO scale9 scale10
    0 "Not at all"
    10 "Completely" .
