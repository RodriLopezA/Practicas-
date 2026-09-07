program tt;
procedure menorN(num: integer; var m1, m2: integer);
var
    dig: integer;
begin
    m1:= 10; 
    m2:= 10;
    if (num < 0) then
        num:= -num;
    if (num = 0) then
        m1:= 0
    else begin
        while (num <> 0) do begin
            dig:= num mod 10; 
            if (m1>dig) then begin
                m2:= m1;
                m1:= dig;
            end
            else if (m2 > dig) then
                m2:= dig;
            num:= num div 10;
        end;
    end;
end;

var
    numero, min1, min2: integer;
begin
    writeln('ingrese numero');
    readln(numero);

    menorN(numero, min1, min2);

    writeln('numero chico 1: ', min1);
end.

        
