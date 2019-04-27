program MaximizarSoma;

type vetor = array [1..1000] of LongInt;
var sequencia : vetor;
    i, maxima, atual, tam, alcance : LongInt;

function SomaSubSequencia (sequencia : vetor; indice : LongInt; alcance : LongInt) : LongInt;
var soma, i : LongInt;
begin
  soma := 0;
  indice := indice + alcance;
  for i := indice - alcance to indice + alcance do
    soma := soma + sequencia[i];
  if soma + sequencia[i + 1] > soma then
    soma := soma + sequencia[i + 1];
  SomaSubSequencia := soma;
end;

begin
  read(tam);
  maxima := 0;
  for i := 1 to tam do
    read(sequencia[i]);
  alcance := 0;
  while alcance * 2 + 1 < tam do
  begin
    for i := 1 to tam - alcance do
    begin
      atual := SomaSubSequencia(sequencia, i, alcance);
      if atual > maxima then
        maxima := atual;
    end;
    alcance := alcance + 1;
  end;
  WriteLn(maxima);
end.