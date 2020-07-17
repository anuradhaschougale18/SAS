%LET name="ITVEDANT";


%MACRO global1;
data insidemacro;
x=&name;
run;
%MEND global1;

%global1;


data outsidemacro;
y=&name;
run;