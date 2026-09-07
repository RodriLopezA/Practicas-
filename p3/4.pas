program tt;
function esMayus(letra: char): boolean;
begin
    esMayus:= (letra in ['A'..'Z']);
end;
function esDig(num: char):boolean;
begin
    esDig:= (num in ['0'..'9']);
end;
var
    c: char;
begin
    readln(c);
    if esMayus(c) then
        writeln('es mayuscula')
    else
        writeln('no es mayuscula');

    if esDig(c) then
        writeln('es digito')
    else
        writeln('no es digito');
end.