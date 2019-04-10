program ComparaLista;

var
  lista1: array [1..100] of longint;
  lista2: array [1..100] of longint;
  i, tam1, tam2, n: integer;
  inv: boolean;
begin
  read(n);
  i := 1;
  while n <> 0 do
  begin
    lista1[i] := n;
    read(n);
    i := i + 1;
  end;
  tam1 := i - 1;
  read(n);
  i := 1;
  while n <> 0 do
  begin
    lista2[i] := n;
    read(n);
    i := i + 1;
  end;
  tam2 := i - 1;

  if tam1 <> tam2 then
    writeln('Tamanhos diferentes')
  else
  begin
    inv := true;
    for i := 1 to tam1 do
      if lista1[i] <> lista2[tam1 - i + 1] then
        inv := false;
    if inv then
      writeln('Sim')
    else
      writeln('Nao');
  end;
end.