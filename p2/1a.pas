program tt;
var
    num, dig: integer;
begin
    writeln('ingrese numero entero: ');
    readln(num);
    
    if (num < 0) then
    num := -num;

    writeln(' digitos multiplos de 3: ');

    while (num <> 0) do begin
        dig := num mod 10;
        if ((dig mod 3) = 0) then 
            writeln(dig);
        num:= num div 10;
    end;
    readln;
end.