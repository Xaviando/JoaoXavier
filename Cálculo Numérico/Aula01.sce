clear; clc;
d = input("Decimal = ", "s");
d = strtod(d);
//Separa a parte inteira da fracionária
dint = floor(d);
dfrac = d - dint;
//Converte a parte inteira
intb = dec2bin (dint);
//Converte a parte fracionária
if dfrac <> 0 then
    j = 1;
    while dfrac ~= 0
        fracb(j) = floor (dfrac*2);
        dfrac = dfrac*2 - floor(dfrac*2);
        j = j +1;
    end
    fracb = strcat(string(fracb));
    bin = strcat([intb,fracb], ".");
    printf ("Binário = %s\n",bin);
else 
    printf ("Binário = %s\n",intb);
end
