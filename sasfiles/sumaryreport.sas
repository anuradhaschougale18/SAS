/*
D-Developer , AD-Assistant Developer
ntask: Number of Task Assigned.
ctask: Number of Task Completed.
*/

data ITVEDANT.firm;
input name$  post$  region$ ntask ctask gender$;
datalines;
Harry  D  WEST 10   6  Male
Mac    AD EAST  5   2  Male
Rohit  D  EAST  12  7  Male
Shree  D  EAST  15 11  Male
Ramesh AD WEST  10 7   Male
POOJA  AD EAST  14 10  Female
KIRAN  AD WEST  15 8   Male
Minal  D  EAST  12 5   Female
Tejal  AD WEST  10 4   Female
Kartiken AD WEST 7 4   Male
Mayuri   AD  WEST 14 8 Female
Mahesh  D    EAST 10 8 Male
Shrikant AD  EAST 12 6 Male
;
run;
