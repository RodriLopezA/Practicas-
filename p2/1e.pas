program tt;
var
    num, t: integer;
begin
    t := 0;
    
    while (t < 100) do begin
        writeln('Ingrese numero entero: ');
        readln(num);
        
        if (num < 0) then
            num := -num;

        if (num = 0) then 
        begin
            t := t + 1;
        end 
        else 
        begin
            while (num <> 0) do begin
                t := t + 1;
                num := num div 10;
            end;
        end;
        
        writeln('total de digitos hasta ahora: ', t);
    end;
    
    readln;
end.