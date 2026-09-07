program tt;
function esP(dig: integer): boolean;
begin
    esP:= (dig = 2) or (dig = 3) or (dig = 5) or (dig = 7);
end;

function todosP(num: integer):boolean;
var
    dig: integer;
    todosC: boolean;
begin
    todosC:= true;
    if num < 0 then
        num:= -num;
    while (num > 0) and (todosC) do begin
        dig:= num MOD 10;
        if esP(dig) then
            num:= num div 10
        else
            todosC:= false;
    end;
    todosP:= todosC;
end;
var
    numero: integer;
begin
    readln(numero);
    if todosP(numero) then
        writeln('todos p')
    else
        writeln('no es primo algun dig');
end.

