program tt;
const
    corte = 'ATARI';
type
    cadena20 = string[20];
    catalogo = record
        marca: cadena20;
        modelo: cadena20;
        precio: real;
    end;

procedure leerDatos(var t: catalogo);
begin
    readln(t.marca);
    if (t.marca <> corte) then begin
        readln(t.modelo);
        readln(t.precio);
    end;
end;

procedure precioEco(t: catalogo; var precioMin: real; 
var marcaMin, modeloMin: cadena20);
begin
    if t.precio < precioMin then begin
        precioMin:= t.precio;
        marcaMin:= t.marca;
        modeloMin:= t.modelo;
    end;    
end;

procedure procesarC(var t: catalogo; var pM: real; var marcaM: cadena20; var modM: cadena20);
var
    marcaAct: cadena20;
    sumaM: real;
    cantM: integer;
    promedio: real;
begin
    sumaM:= 0;
    cantM:= 0;
    marcaAct:= t.marca;
    while (t.marca <> corte) and (t.marca = marcaAct) do begin
        cantM:= cantM + 1;
        sumaM:= sumaM + t.precio; 
        precioEco(t, pM, marcaM, modM);

        leerDatos(t);
    end;
    writeln(cantM);
    if (cantM > 0) then begin
        promedio:= sumaM / cantM;
        writeln(promedio);
    end;
end;

var
    t: catalogo;
    pM: real;
    marcMin, modM: cadena20;
begin
    pM:= 9999;
    modM:= '';
    marcMin:= '';
    leerDatos(t);
    while (t.marca <> corte) do begin
        procesarC(t, pM, marcMin, modM);
    end;

    if pM < 9999 then begin
        writeln(marcMin);
        writeln(modM);
    end
    else
        writeln('no hay datos');
end.