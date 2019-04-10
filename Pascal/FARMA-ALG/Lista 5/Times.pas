program Times;

var
  times: array [1..20] of string;
  pontuacao: array [1..20] of longint;
  maior: array [1..2] of longint;
  i, max: integer;
begin
  readln(max);
  for i := 1 to max do
    readln(times[i]);
  for i := 1 to max do
    readln(pontuacao[i]);
  maior[1] := pontuacao[1];
  maior[2] := 1;
  for i := 2 to max do
    if pontuacao[i] > maior[1] then
    begin
      maior[1] := pontuacao[i];
      maior[2] := i;
    end;
  writeln('O campeao eh o ', times[maior[2]]);
end.