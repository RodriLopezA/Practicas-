program tt;
var
    num, aux, dig, cantN, cP, cI: integer;
begin
    cantN := 0;
    num := 0; 
    
    while num <> 3246 do begin
        writeln('Ingrese numero entero: ');
        readln(num);
        
        aux := num; 
        
        if aux < 0 then
            aux := -aux;
            
        cI := 0; 
        cP := 0;
        
        while aux <> 0 do begin
            dig := aux mod 10;
            if ((dig mod 2) <> 0) then
                cI := cI + 1
            else
                cP := cP + 1;
            aux := aux div 10;
        end;
        
        if cP = cI then
            cantN := cantN + 1;
    end;
    
    writeln('Cantidad de numeros con igual cantidad de pares e impares: ', cantN);
    readln;
end.