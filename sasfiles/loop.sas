/*
1)DO LOOP
2) DO WHILE
3) Do UNTIL


syntax:
DO variable=ivalue to fvalue
body of DO loop;
END;

*/

DATA temp3;
x=0;
DO i=1 to 6;
x=x+i;
END;
run;


/*
DO WHILE LOOP
initialization;
DO WHILE(condition);
Body of while loop;
increment/decrement;
END;

*/

DATA temp4;
x=0;
i=1;
DO WHILE(i<=5);
x=x+i;
i=i+1;
END;
run;

/*
DO UNTIL LOOP
initialization;
DO UNTIL(condition);
Body of while loop;
increment/decrement;
END;

*/
DATA temp5;
x=0;
i=1;
DO UNTIL(i>5);
x=x+i;
i=i+1;
END;
run;
