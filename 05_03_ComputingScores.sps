* Encoding: UTF-8.
* 05_03_ComputingScores.

* AVERAGING.
COMPUTE Scale_Mean = MEAN(Q1, Q2, 8-Q3r) .
EXECUTE .

* COUNTING.
COMPUTE Count = 0 .
IF (C1 = 1) Count = Count + 1 .
IF (C2 = 1) Count = Count + 1 .
IF (C3 = 1) Count = Count + 1 .
EXECUTE .