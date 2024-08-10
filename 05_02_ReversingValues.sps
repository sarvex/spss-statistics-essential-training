* Encoding: UTF-8.
* 05_02_ReversingValues.

* Recoding a variable with more values.
RECODE Scale_0_6 (0=6) (1=5) (2=4) (3=3) (4=2) (5=1) (6=0) INTO Scale_0_6_r_1.
EXECUTE.

* For 0-k scale, use k - X.
COMPUTE Scale_0_6_r_2 = 6 - Scale_0_6 .
EXECUTE.

* For 1-k scale, use (k+1) - X.
COMPUTE Scale_1_7_r = 8 - Scale_1_7 .
EXECUTE.

* For negative to positive scale, use either 0 - X or X*-1.
COMPUTE Scale_Neg_Pos_r = Scale_Neg_Pos * -1.
EXECUTE.

* Value labels for new variables.
VALUE LABELS
    Scale_0_6_r_1 Scale_0_6_r_2
      0 "Lowest"
      6 "Highest" /
    Scale_1_7_r
      1 "Lowest"
      7 "Highest" /
    Scale_Neg_Pos_r
      -3 "Lowest"
      3 "Highest" .
