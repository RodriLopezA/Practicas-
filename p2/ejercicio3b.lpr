program tt;
const
    aLeer = 15;
var
    i, num, aux, dig: integer;
begin
    for i:=1 to aLeer do begin
        writeln('ingrese numeros enteros: ');
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
        case num of
            0: writeln('cero');
            1: writeln('uno');
            2: writeln('dos');
            3: writeln('tres');
            4: writeln('cuatro');
            5: writeln('cinco');
            6: writeln('seis');
            7: writeln('siete');
            8: writeln('ocho');
            9: writeln('nueve');
        end;
    end;
    readln;
end.
