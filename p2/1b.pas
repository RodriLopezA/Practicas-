program tt;
var
    num, dig, mD: integer;
begin
    writeln('ingrese numero entero: ');
    readln(num);
    
    if (num < 0) then
    num := -num;

    mD:= 9999;

    if (num = 0) then
        mD := 0
    else begin
        while (num <> 0) do begin
            dig:= num mod 10;
            if (dig < mD) then
                mD := dig;
            num:= num div 10;

        end;
    end;
    
    writeln('digito mas chico encontrado en el numero: ', mD);
    readln;
end.