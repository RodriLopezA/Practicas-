program tt;

function max(n1, n2: integer): integer;
begin
    if n1 > n2 then
        max:= n1
    else
        max:= n2;
end;

function max4(n1,n2, n3, n4: integer): integer;
begin
    max4:= max(max(n1,n2),max(n3,n4));
end;

var
    v1, v2, v3, v4, resultado:integer;
begin
    writeln('ingrse 4 enteros: ');
    readln(v1, v2, v3, v4);

    resultado:= max4(v1, v2, v3, v4);
    writeln('el num mayor es: ', resultado);

end.

        
        