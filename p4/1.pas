program tt;
const
    corte = 'zzz';
type
    cadena20= string[20];
    puntajes = 0..100;

    proyecto = record
        nomP: cadena20;
        pais: cadena20;
        puntaje: puntajes; 

procedure leerDatos(var t: proyecto);
begin
    readln(t.nomP);
    if (t.nomP <> corte) then begin
        readln(t.pais);
        readln(t.puntaje);
    end;
end;

procedure maxPuntaje(pAct: puntajes; nAct: cadena20; var mP: puntajes; var nomMP: cadena20);
begin
    if (pAct > mP) then begin
        mP:= pAct;
        nomMP:= nAct;
    end;
end;

procedure procesarP(var t: proyecto; var mP: puntajes; var nomMP: cadena20; var sumaArg: integer; var cantArg: integer);
var
    paisAct: cadena20;
    cantApro, cantDest: integer;
begin
    cantApro:= 0;
    cantDest:= 0;
    paisAct:= t.nomP;

    while (t.nomP <> corte) and (t.pais = paisAct) do begin
        if (t.puntaje >= 70) then
            cantApro:= cantApro + 1
        else
            if (t.puntaje >= 90) then
                cantDest:= cantDest + 1;
        if (paisAct = 'Argentina') then begin
            cantArg:= cantArg + 1;
            sumaArg:= sumaArg + t.puntaje;
        end;
        maxPuntaje(t.puntaje, t.pais, mP, nomMP);

        leerDatos(t);
    end;
    readln(cantApro); readln(cantDest);
    end;
end;
begin
    



