program tt;
const
    corte = -1;
type 
    empresa = record
        cuil: integer;
        sueldo: real;
        codDepa: integer;
        numSuc: integer;
    end;

procedure leerDatos(var t: empresa);
begin
    readln(t.numSuc);
    if (t.numSuc <> corte) then begin
        readln(t.cuil);
        readln(t.sueldo);
        readln(t.codDepa);
    end;
end;

procedure dosMaxMonto(sucAct: integer; depaAct: integer;  sueldoAct: real;
var max1, max2: real; var maxS1, maxS2, maxD1, maxD2: integer);
begin
    if sueldoAct > max1 then begin
        max2:= max1;
        maxS2:= maxS1;
        maxD2:= maxD1;
        max1:= sueldoAct;
        maxS1:= sucAct;
        maxD1:= depaAct;
    end
    else if (sueldoAct > max2) then begin
        max2:= sueldoAct;
        maxS2:= sucAct;
        maxD2:= depaAct;
    end;
end;

procedure procesarE(var t: empresa; var max1, max2: real; var maxS1, maxS2: integer;
var maxD1, maxD2: integer);
var
    sucAct:integer;
    depaAct: integer;
    sumaS: real; montoD: real;
begin
    sumaS:= 0;
    sucAct:= t.numSuc;
    while (t.numSuc <> corte) and (t.numSuc = sucAct) do begin
        depaAct:= t.codDepa;
        montoD:= 0;
        while (t.numSuc <> corte) and (t.numSuc = sucAct) and (t.codDepa = depaAct) do begin
            montoD:= montoD + t.sueldo;
            leerDatos(t);
        end;
        dosMaxMonto(montoD, sucAct, depaAct, max1, max2, maxS1, maxS2, maxD1, maxD2);
        sumaS:= sumaS + montoD;
    end;
    writeln(sumaS);
end;

