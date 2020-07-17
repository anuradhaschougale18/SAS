data employee;
input eid name$ gender$ sal;
datalines;
1   Harry   Male   30000
2   Mac     Male   35000
3   Rohit   Male   40000
4   Pooja   Female 32000
5   Nisha   Female 30000
6   Shree   Male   60000
7   Divya   Female 55000
;
run;

data maleemp  femaleemp;
set employee;
IF gender="Male" THEN OUTPUT maleemp;
IF gender="Female" THEN OUTPUT femaleemp;
run;

/*Writing to multiple dataset*/

data A(keep=make mpg) B(keep=weight foreign) ;
set sasbatch.car;
run;
