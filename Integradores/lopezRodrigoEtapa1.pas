//modulo para: 2 puntajes altos, para descomponer un numero entero en cifras,
// y modulo si el nickname es valido. MODULOS PARA LEER Y PROCESAR DATOS DE CADA JUGADOR.

program tt;
const
    players = 20; 

function esDig(c: char): boolean;
begin
    esDig:= c in ['0'..'9'];
end;

function esMinus(c: char): boolean;
begin
    esMinus:= c in ['a'..'z'];
end;

procedure descompNum(num: integer; var sumaC, cantImp: integer);
var
    dig: integer;
begin
    sumaC:= 0;
    cantImp:= 0;
    while num > 0 do begin
        dig:= num MOD 10;
        sumaC:= sumaC + dig;
        if (dig MOD 2) <> 0 then
            cantImp:= cantImp +1;
        num:= num div 10;
    end;
end;

procedure nomVal(var val: boolean);
var
    c: char;
begin
    val:= true;
    read(c);
    while c <> '.' do begin
        if not (esDig(c) or esMinus(c)) then
            val:= false;
        read(c);
    end;
    readln;
end;

    

procedure dosMaxPunt(dig: integer; codAct: integer; var max1, max2, codMax1, codMax2: integer);

begin

    if dig > max1 then begin  
        max2:= max1;
        max1:= dig;
        codMax1:= codAct;
    end
    else if dig > max2 then begin
        max2:= dig;
        codMax2:= codAct;
    end;
end;

procedure procesarJ();
    
