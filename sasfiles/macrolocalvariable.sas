
%MACRO global2;
%LET name1="ITVEDANT";
data insidemacro1;
x=&name1;
run;
%MEND global2;

%global2;


data outsidemacro1;
y=&name1;
run;
