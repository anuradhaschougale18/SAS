/*

Grouping-Columnwise
KEEP and DROP keywords.

*/

DATA temp1;
SET sasbatch.employee;
KEEP name gender;
run;

DATA temp2;
SET sasbatch.employee;
DROP id sal;
run;

