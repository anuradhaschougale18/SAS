proc means data=sasbatch.car N NMISS;
run;


data sasbatch.new;
set sasbatch.car;
IF rep78="." THEN rep78=3.5;
run;

