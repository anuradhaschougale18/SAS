data sasbatch.timefunction;
format t TIME.;
t=time();
h=hour(t);
m=minute(t);
s=second(t);
run;
