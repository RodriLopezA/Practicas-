program tt;

procedure parImpar(num: integer; var cImpar, cPar, cantD: integer; var pImpar: real);
var
    dig: integer;
begin
    cImpar := 0;
    cPar := 0;
    cantD := 0;

    if (num < 0) then
        num := -num;

    if (num = 0) then begin
        cPar := 1;
        cantD := 1;
    end
    else begin
        while (num <> 0) do begin
            dig := num mod 10;
            cantD := cantD + 1;
            
            if (dig mod 2 <> 0) then
                cImpar := cImpar + 1
            else
                cPar := cPar + 1;
                
            num := num div 10;
        end;
    end;

    pImpar := (cImpar / cantD) * 100;
end;

var
    numero: integer;
    cI, cP, cD: integer;
    pI: real;
begin
    writeln('Ingrese un numero entero:');
    readln(numero);

    parImpar(numero, cI, cP, cD, pI);

    writeln('Cantidad de digitos pares: ', cP);
    writeln('Cantidad de digitos impares: ', cI);
    writeln('Cantidad de digitos: ', cD);
    writeln('Porcentaje de impares: ', pI:0:2, '%'); 
end.