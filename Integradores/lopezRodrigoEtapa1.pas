


program pixelCup;
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
    c
begin: char;
    val:= true;
    writeln('ingrese la primer letra del nombre (hasta "."): ');
    read(c);
    while (c <> '.') do begin
        if not (esDig(c) or esMinus(c)) then
            val:= false;
        
        read(c);
    end;
    readln;
end;

    

procedure dosMaxPunt(dig: integer; codAct: integer; var max1, max2, 
codMax1, codMax2: integer);

begin

    if dig > max1 then begin  
        max2:= max1;
        codMax2:= codMax1;
        max1:= dig;
        codMax1:= codAct;
    end
    else if dig > max2 then begin
        max2:= dig;
        codMax2:= codAct;
    end;
end;

procedure procesarJ(var punt, cod: integer; var val: boolean );
begin
    writeln('ingrese puntaje (de 0 a 1000)');
    readln(punt);
    writeln('ingrese codigo, de 4 cifras (de 1000 a 9999)');
    
    nomVal(val);readln(cod);
end;

var
    puntaje, codigo: integer;
    maximo1, maximo2: integer;
    valido:boolean;
    codMaximo1, codMaximo2: integer;
    cantVal: integer;
    i: integer;
    sumaCifras, cantImpares: integer;
begin
    cantVal:= 0;
    maximo1:=-1;
    maximo2:=-1;
    
    for i:= 1 to players do begin
        procesarJ(puntaje, codigo, valido);
        dosMaxPunt(puntaje, codigo, maximo1, maximo2, codMaximo1, codMaximo2);
    
        if valido then
            cantVal:= cantVal + 1;
    end;
    descompNum(codMaximo1,sumaCifras, cantImpares);

    writeln('el primer puntaje maximo:', maximo1, ', con codigo', codMaximo1,
    ' el segundo puntaje maximo:', maximo2, ', con codigo', codMaximo2);
    writeln('el codigo del puntaje maximo: ', codMaximo1,
     ' la suma de sus cifras es: ', sumaCifras, ' y la cantidad de cifras impares son: ', cantImpares);
    writeln(' la cantidad de nicks validos son: ', cantVal);
end.

    











