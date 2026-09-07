program tt;
procedure dBlancos(var car: char);
begin
    while (car = ' ') do begin
        read(car);
    end;
end;

function long(var car: char):boolean;
var
    cantP: integer;
begin
    cantP:=0;
    while (car <> ' ') and (car <> '*') do begin
        cantP:=cantP+1;
        read(car);
    end;
    long:= cantP=8;
end;
var
    cantOcho:integer;
    carac:char;
begin
    cantOcho:=0;
    read(carac);
    while (carac <> '*') do begin
        dBlancos(carac);
        if (carac <> '*') then begin
            if long(carac) then begin
                cantOcho:=cantOcho +1;
            end;
        end
    end;
end.

    