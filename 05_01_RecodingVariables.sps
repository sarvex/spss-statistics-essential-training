* Encoding: UTF-8.
* 05_01_RecodingVariables.

* RECODING DICOHOTOMOUS VARIABLES.

* Paste syntax from dialog.
* Old=New.
RECODE Status (2=0) (ELSE=Copy) INTO Completed_1.
EXECUTE.

* Can restructure vertically.
RECODE Status 
  (2=0) 
  (ELSE=Copy) 
  INTO Completed_2.
EXECUTE.

* Can also use combined COMPUTE and IF statements.
COMPUTE Completed_3 = 0.
IF (Status = 1) Completed_3 = 1.
EXECUTE.

* It's a good idea to create new labels right away.
VARIABLE LABELS 
  Completed_1 "Is order completed? (First Version)" 
  Completed_2 "Is order completed? (Second Version)" 
  Completed_3 "Is order completed? (Third Version)" .
VALUE LABELS 
  Completed_1 TO Completed_3
    0 "No"
    1 "Yes" .

* COMBINING MULTIPLE GROUPS.

* Paste syntax from dialog.
RECODE Group (1=1) (2=2) (3 thru Highest=3) INTO Group_123.
EXECUTE.

VARIABLE LABELS Group_123 "Combined groups" .
VALUE LABELS 
  Group_123
    1 "Group 1"
    2 "Group 2"
    3 "Other groups" .
