program tt;
const
    inicio = 1;
    fin = 35;
    corte = 'ZZZ';
    maxF = 120;
type
    cadena50 = string[50];
    rango = 0..maxF;
    rango1 = inicio..maxF;

    vectorM = array [inicio..fin] of real;
    vectorN = array [inicio..fin] of cadena50;

    farmacia = record
        codigo: integer;
        nombre: cadena50;
        direccion: cadena50;
        localidad: cadena50;
        montos: vectorM;
    end;

    vFarmacia = array [rango1] of farmacia;

    RFarmacia = record
        datos: vFarmacia;
        dimL: rango;
    end;

procedure leerDatos(var v: farmacia);
var
    i: integer;
begin
    readln(v.codigo);
    readln(v.nombre);
    readln(v.direccion);
    readln(v.localidad);
    
    for i:= inicio to fin do begin
        readln(v.montos[i]);
    end;
end;

procedure cargarF(var r: RFarmacia);
var
    f: farmacia;
begin
    r.dimL:= 0;
    repeat
        leerDatos(f);
        if (r.dimL < maxF) then begin
            r.dimL:= r.dimL + 1;
            r.datos[r.dimL] := f;
        end;
    until (f.nombre = corte) or (r.dimL = maxF);
end;

function noRepe(num: integer): boolean;
var
    digitos: array [0..9] of integer;
    dig, i: integer; 
    repetido: boolean;
begin
    for i:= 0 to 9 do 
        digitos[i]:= 0;
    repetido:= false;
    while (num <> 0) and (not repetido) do begin
        dig:= num mod 10;
        if (digitos[dig] > 0) then
            repetido:= true
        else begin
            digitos[dig]:= 1;
            num:= num div 10;
        end;
    end;
    noRepe:= not repetido;
end;

procedure calcularF(m: RFarmacia; n: vectorN);
var
    i, g: integer;
    totales: vectorM;
begin
    for g:= inicio to fin do
        totales[g]:= 0;
    for i:= inicio to m.dimL do begin
        if noRepe(m.datos[i].codigo) then begin
            for g:= inicio to fin do begin
                totales[g]:= totales[g] + m.datos[i].montos[g];
            end;
        end;
    end;
    for g:= inicio to fin do begin
        writeln(totales[g]);
    end;
end;
var
    v: RFarmacia;
    n: vectorN;
begin
    cargarF(v);
    calcularF(v, n);
    readln;
end.






