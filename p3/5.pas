program tt;

function esC(num: integer): boolean;
var
    ori, aux, dig: integer;
begin
    ori:= num;
    aux:= 0;

    while num > 0 do begin
        dig:= num mod 10;
        aux:= (aux * 10) + dig;
        num:= num div 10;
    end;

    esC:= (ori=aux);
end;
var
    numero: integer;
begin
    readln(numero);
    if esC(numero) then
        writeln('Es capicua el numero ', numero)
    else
        writeln('No es capicua el numero ', numero);
end.