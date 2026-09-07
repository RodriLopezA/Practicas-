program tt;
const
    nL = 80;
var
    num, dig, i: integer;
begin
    writeln('ingrese numero entero: ');
    for i:= 1 to nL do begin
        readln(num);

        if (num < 0) then
        num := -num;
        if num = 0 then
            writeln('ingrese un numero mayor a cero')
        else begin
            while (num <> 0) do begin
                dig := num mod 10;
                if ((dig mod 2) <> 0) then
                    writeln(dig);
                num:= num div 10;
            end;
        end;
    end;
    readln;
end.