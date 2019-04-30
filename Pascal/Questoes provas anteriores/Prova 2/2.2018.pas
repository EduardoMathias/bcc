program repeticao;

type vetor = array[0..100] of LongInt;

var v, vNum, vCont: vetor;
    i : LongInt;

function le_vetor(var v: vetor) : LongInt;
var x, i: LongInt;
begin
  Read(x);
  i := 0;
  while x <> 0 do
  begin
    i += 1;
    v[i] := x;
    Read(x);
  end;
  le_vetor := i;
end;

function presente(x : LongInt; v : vetor) : Boolean;
var i : LongInt;
begin
  presente := false;
  for i:= 1 to v[0] do
    if x = v[i] then
      presente := true;
end;

procedure conjunto(var v1 : vetor; v2 : vetor);
var i, j : LongInt;
begin
  j := 0;
  for i := 1 to v2[0] do
    if not presente(v2[i], v1) then
      begin
        j += 1;
        v1[j] := v2[i];
        v1[0] := j;
      end;
end;

function contagem(x: LongInt; v: vetor): LongInt;
var i, cont : LongInt;
begin
  cont := 0;
  for i:= 1 to v[0] do
    if x = v[i] then
      cont += 1;
  contagem := cont;
end;

begin
  v[0] := le_vetor(v);
  conjunto(vNum, v);
  for i:= 1 to vNum[0] do
    vCont[i] := contagem(vnum[i], v);
  for i:= 1 to vNum[0] do
    WriteLn(vNum[i], ': ', vCont[i], ' vezes');
end.