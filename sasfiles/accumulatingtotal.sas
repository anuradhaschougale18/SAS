/*Accumulating total*/

data A;
input ID  numberofbooking;
datalines;
1  10
2  25
3  56
4  85
5  105
;
run;

data total;
set A;
TotalBookings + numberofbooking;
run;