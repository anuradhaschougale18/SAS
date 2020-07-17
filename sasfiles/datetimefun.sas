data sasbatch.datetime;
format dt DATETIME.;
dt=datetime();
d=datepart(dt);
run;