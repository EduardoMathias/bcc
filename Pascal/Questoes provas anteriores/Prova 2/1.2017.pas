

const MAX = 100;

type
    TpVetor = array [1..MAX] of Integer;

var v, v1, v2 : TpVetor;
    media : Real;
    i, tam, tam1, tam2 : LongInt;

function le_vetor (var v: TpVetor) : LongInt;
var i, aux : LongInt;
begin
    i := 0;
    Read(aux);
    while aux <> 0 do
    begin
        i := i + 1;
        v[i] := aux;
        Read(aux);
    end;
    le_vetor := i;
end;

function calcula_media(v: TpVetor; tam : LongInt) : Real;
var i: LongInt;
    soma : Real; 
begin
    soma := 0.0;
    for i := 1 to tam do
        soma := soma + v[i];
    calcula_media := soma / tam;
end;

procedure divide_vetor(media: Real; v : TpVetor; tam : LongInt; var v1, v2 : TpVetor; var tam1, tam2 : LongInt);
var i: LongInt;
begin
    tam1 := 0;
    tam2 := 0;
    for i := 1 to tam do
    begin
        if v[i] < media then
        begin
            tam1 := tam1 + 1;
            v1[tam1] := v[i];
        end
        else
        begin
            tam2 := tam2 + 1;
            v2[tam2] := v[i];
        end;
    end;
end;

begin
    tam := le_vetor(v);
    media := calcula_media(v, tam);
    divide_vetor(media, v, tam, v1, v2, tam1, tam2);
    for i := 1 to tam1 do
        Write(v1[i], ', ');
    WriteLn();
    WriteLn(media:0:2);
    for i := 1 to tam2 do
        Write(v2[i], ', ');
end.