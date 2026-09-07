program tt;

procedure inverso(num: integer; cant: integer);
var
    i, dig: integer;
begin
    if num < 0 then
        num:= -num;
    for i:= 1 to cant do begin
        dig:= num mod 10;
        write(dig);
        if i < cant then
            write(' - ');
        num:= num div 10;
    end;
end;
var
    numero: integer;
begin
    readln(numero);
    while (numero <> 0) do begin
        inverso(numero, 3);
        writeln(' ');
        inverso(numero, 5);
        readln(numero);
    end;
end.