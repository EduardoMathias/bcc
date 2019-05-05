program Substituicao;

const MAX = 100;

type vetor = array [0..MAX] of LongInt;

var
    v1, v2, v3 : vetor;
    inicio : LongInt;

function le_vetor(var v : vetor) : LongInt;
var i, x : LongInt;
begin
  i := 0;
  Read(x);
  while x <> 0 do
  begin
    i += 1;
    v[i] := x;
    Read(x);
  end;
  le_vetor := i;
end;

procedure imprime_vetor(v : vetor);
var i : LongInt;
begin
  for i := 1 to v[0] do
    Write(v[i], ' ');
end;


function encontra(v1, v2 : vetor) : LongInt;
var i, j : LongInt;
    encontrou : Boolean;
begin
  i := 1;
  encontrou := false;
  while (i <= v1[0]) and not encontrou do
  begin
    if v1[i] = v2[1] then
    begin
      encontrou := true;
      for j := 1 to v2[0] do
        if v1[i + j - 1] <> v2[j] then
          encontrou := false;
    end;
    i += 1;
  end;
  if encontrou then
    encontra := i - 1
  else
    encontra := 0;
end;

procedure remove(var v : vetor; inicio, tam : LongInt);
var i : LongInt;
begin
  for i := inicio to inicio + tam + 1 do
    v[i] := v[i + tam];
  v[0] -= tam;
end;

procedure insere(var v1 : vetor; inicio : LongInt; v3 : vetor);
var i, j : LongInt;
begin
  v1[0] += v3[0];
  // abre espaço para o v3
  for i := v1[0] downto inicio do
    v1[i + v3[0]] := v1[i];
  // insire o v3 no v1
  j := 1;
  for i := inicio to inicio + v3[0] - 1 do
    begin
      v1[i] := v3[j];
      j += 1;
    end;
end;

begin
  v1[0] := le_vetor(v1);
  v2[0] := le_vetor(v2);
  v3[0] := le_vetor(v3);
  inicio := encontra(v1, v2);
  if inicio <> 0 then
  begin
    remove(v1, inicio, v2[0]);
    insere(v1, inicio, v3);
  end;
  if v1[0] >= 1 then
    imprime_vetor(v1)
  else
    WriteLn('vazia');
end.