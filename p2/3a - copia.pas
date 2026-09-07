program tt;
const
    aLeer = 15;
var
    i, num, aux, dig: integer;
begin
    for i:=1 to aLeer do begin
        writeln('ingrese numeros enter3os: ');
        readln(num);
        if (num < 0) then
            num:= -num;
        while (num >= 10) do begin
            aux:=0;
            while (num > 0) do begin
                dig:= num mod 10;
                aux:= aux + dig;
                num:= num div 10;
            end;
        num:= aux;
        end;
        writeln(num);
    end;

end.
