program remove;

const
  MAX = 100;
type
  TpVetor = array [1..MAX] of integer;
var i, tam : LongInt;
    v : TpVetor;
// é só para testar o funcionamento, na prova só precisaria fazer o remove()
function le_vetor(var v: TpVetor) : LongInt;
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

procedure remove(var v:TpVetor; var tam : LongInt; pos, num : LongInt);
var i : LongInt;
begin
  if not (pos + num > tam) then
    begin
      for i := pos to pos + num do
        v[i] := v[i + num];
      tam -= num;
    end;
end;

begin
  tam := le_vetor(v);
  remove(v, tam, 2, 3);
  for i := 1 to tam do
    Write(v[i], ' ');
end.