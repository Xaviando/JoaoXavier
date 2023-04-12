clear; clc;
dec = input("Decimal = ","s");
dec_aux = strsplit(dec,".");
aux = strtod(dec);

if mod(aux,1) == 0 // dec é um inteiro
    parte_int = str2double(dec_aux(1));
else
    parte_int = str2double(dec_aux(1));
    parte_frac = str2double(['0.', dec_aux(2)]);
end

// Converte a parte inteira da base 10 para a base 2
bin = 0; pot = 1;
while parte_int <> 0
    resto = mod(parte_int,2);
    bin = bin + resto*pot;
    parte_int = fix(parte_int/2);
    pot = pot*10;
end

if exist('parte_frac', 'var') == 1 // Entrada é um número real
    pot = 0.1;
    // Converte em um número 0 < x < 1
    while pot > parte_frac
        pot = pot/10;
    end
    // Converte a parte fracionada para base 2
    while (parte_frac - fix(parte_frac)) ~= 0
        bin_frac = 2*parte_frac;
        bin = bin + fix(bin_frac)*pot;
        pot = pot/10;
        parte_frac = parte_frac - fix(parte_frac);
    end
end

// 0 equivalente binário de um número real é convertido em um string para o
// programa não imprimir casas decimais inexistentes
if mod(aux,1) == 0
    printf("Binário = %d\n",bin);
else
    bin = string(bin);
    printf("Binário =%s\n", bin);
end
