
program MediaPonderada;

var 
  p1, p2, p3 : array [1..100] of Real;
  i, alunos : Integer;
  media : Real;
  situacao : String;
begin
  ReadLn(alunos);
  for i := 1 to alunos do
    read(p1[i]);
  for i := 1 to alunos do
    read(p2[i]);
  for i := 1 to alunos do
    read(p3[i]);
  for i := 1 to alunos do
    begin
      media := (p1[i] + p2[i] * 2 + p3[i] * 3) / 6;
      if media >= 70.0 then situacao := 'Aprovado'
      else if (media >= 40.0) and (media < 70.0) then situacao := 'Final'
      else if media < 40.0 then situacao := 'Reprovado';
      WriteLn('Aluno ', i, ': ', media:0:2, ' ', situacao);
    end;
end.
