program tt;
procedure promedio(cant: integer; var prom: real);
var
    suma, estatura: real;
    i: integer;
begin
    suma:= 0;
    for i:= 1 to cant do begin
        writeln('ingrese la estatura de la persona: ');
        readln(estatura);
        suma:= suma + estatura;
    end;
    if cant > 0 then
        prom:= suma/cant
    else
        prom:= 0;
end;
var 
    prome: real;
begin
    promedio(5, prome);

    writeln('el promedio final es: ', prome:0:2);
end.