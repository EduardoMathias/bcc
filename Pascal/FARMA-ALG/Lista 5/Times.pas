program Times;

var
  times: array [1..20] of string;
  pontuacao: array [1..20] of longint;
  i, max, maior: integer;
begin
  readln(max);
  for i := 1 to max do
    readln(times[i]);
  for i := 1 to max do
    readln(pontuacao[i]);
  maior := 1;
  for i := 2 to max do
    if pontuacao[i] > pontuacao[maior] then
    begin
      maior := i;
    end;
  writeln('O campeao eh o ', times[maior]);
end.