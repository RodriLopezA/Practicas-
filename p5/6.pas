program tt; 
const
    dimF = 123;
type
    cadena20 = string[20];
    estudiantes = record
        legajo: integer;
        apellido: cadena20;
        nombre: cadena20;
        cantAsis: integer;
    end;

    vectorC= array[1..dimF] of estudiantes;

procedure leerDatos(var v: vectorC);
var
    i: integer;
begin
    for i:= 1 to dimF do begin
        readln(v[i].legajo);
        readln(v[i].apellido);
        readln(v[i].nombre);
        readln(v[i].cantAsis);
    end;
end;

function buscarLegajo(v: vectorC; legajoBuscado: integer): integer;
var
    i, pos : integer;
begin
    pos:=-1;
    i:= 1;
    while (i <= dimF) and (pos = -1) do begin
        if (v[i].legajo = legajoBuscado) then
            pos:= i
        else
            i:= i+1;
    end;
    buscarLegajo:= pos;
end;

procedure informar(v: vectorC; num: integer);
var
    i: integer;
begin
    for i:= 1 to dimF do begin
        if ((v[i].legajo mod num)= 0) then begin
            writeln(v[i].apellido,v[i].nombre,v[i].legajo);
        end;
    end;
end;

function asisCero(t: vectorC): integer;
var
    i: integer;
    cant: integer;
begin
    cant:= 0;
    for i:= 1 to dimF do begin
        if (t[i].cantAsis = 0) then
            cant:= cant + 1;
    end;
    asisCero:= cant;
end;

var
    v: vectorC;
    multiplo: integer;
    lB: integer;
    pos: integer;
begin
    leerDatos(v);
    readln(lB);
    pos:= buscarLegajo(v, lB);
    if (pos <> -1) then
        writeln('estudiante en pos : ', pos)
    else
        writeln('legajo -1 no se encuentra.');

    readln(multiplo);
    informar(v, multiplo);
    writeln(asisCero(v));
end.

        











