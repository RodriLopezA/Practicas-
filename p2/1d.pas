program tt;
var
    num, dig: integer;
begin
    writeln('ingrese numero entero: ');
    readln(num);
    while num <> -1 do begin
        if (num < 0) then
           num := -num;
        while num <> 0 do begin
            dig := num mod 10;
            if ((dig mod 2) <> 0) then 
                writeln('numero impar: ', dig);
            num:= num div 10;
        end;
        writeln('ingrese otro numero entero: ');
        readln(num);
    end;
    readln;
end.    