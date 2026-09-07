program tt;
var
    num, dig, aux, ori: integer;
begin
    writeln('ingrese el numero entero: ');
    readln(num);
    if (num < 0) then
        num:= -num;
    ori:= num;
    aux:= 0;
    while num <> 0 do begin
        dig:= num mod 10;
        aux:= (aux * 10)+ dig;
        num:= num div 10;
    end;
    if ori = aux then
        writeln('es capicua')
    else
        writeln('no es capicua');
    writeln('numero invertido: ', aux);
    readln;
end.
