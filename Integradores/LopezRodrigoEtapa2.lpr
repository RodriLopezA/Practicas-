program pixelCup;
const 
    corte = 'FIN';
type

    cadena20 = string[20];
    puntPartida = 0..1000;
    carPower = set of 'A'..'F';

    equipos = record
        nomEquipo: cadena20;
        nomJugador: cadena20;
        puntaje: puntPartida;
        powerUps: carPower;
    end;

procedure powerS(var c: carPower);
var
    letra: char;
begin
    c:= [];
    writeln('ingrese powerup (A a F) hasta (.)');
    readln(letra);
    while letra <> '.' do begin
        if (letra >= 'A') and (letra <= 'F') then
            c:= c + [letra];
            readln(letra);
    end;
end;


procedure leerDatos(var t: equipos);
begin
    writeln('nombre equipo hasta (FIN): ');
    readln(t.nomEquipo);
    writeln('nombre jugador: ');
    readln(t.nomJugador);
    writeln('puntaje obtenido 0 a 1000: ');
    readln(t.puntaje);
    powerS(t.powerUps);
end;

function esAC(u: carPower):boolean;

begin
    if ('A' in u) and ('C' in u) then 
        esAC:= true
    else
        esAC:= false;
end;

procedure maxJugador(t: equipos; var mP: integer; var nomMP: cadena20;
var pT: integer);

begin
    pT:= pT + t.puntaje;
    if (t.puntaje > mP) then begin
        mP:= t.puntaje;
        nomMP:= t.nomJugador;
    end;
end;

procedure maxEquipo(tPE: integer; nomPE: cadena20; var maxPE: integer; var nomMaxPE: cadena20);
begin
    if tPE > maxPE then begin
        maxPE:= tPE;
        nomMaxPE:= nomPE;
    end;
end;

procedure procesarE(var t: equipos; var maxPE: integer; var nomMaxPE: cadena20;
var sumaTE: integer; var cantTEJ: integer);
var
    equipo: cadena20;
    mP, pT, cantAC: integer;
    nomMP: cadena20;
begin
    equipo:= t.nomEquipo;
    cantAC:= 0;
    mP:= -1;
    pT:= 0;
    nomMP:= '';

    while (t.nomEquipo = equipo) do begin
        maxJugador(t, mP, nomMP, pT);
        if esAC(t.powerUps) then 
            cantAC:= cantAC +1;

        sumaTE:= sumaTE + t.puntaje;
        cantTEJ:= cantTEJ + 1;

        leerDatos(t);
    end;

    writeln('puntaje total: ', pT);
    writeln('nombre mayor puntaje: ', nomMP);
    writeln('cantidad de A y C: ',cantAC);

    maxEquipo(pT, equipo, maxPE, nomMaxPE);
end;

var
    t: equipos;
    equipoAct: cadena20;
    maxPE: integer;
    nomMaxPE: cadena20;
    sumaTotalT: integer;
    cantJT: integer;
    promedio: real;
begin
    maxPE:= -1;
    nomMaxPE:= '';
    sumaTotalT:= 0;
    cantJT:=0;

    leerDatos(t);

    repeat
        equipoAct:= t.nomEquipo;

        procesarE(t, maxPE, nomMaxPE, sumaTotalT, cantJT);

    until (equipoAct = corte);

    writeln('equipo mayor punt: ', nomMaxPE);

    if cantJT > 0 then begin
        promedio:= sumaTotalT / cantJT;
        writeln('promedio general: ', promedio);
    end;
end.
        































