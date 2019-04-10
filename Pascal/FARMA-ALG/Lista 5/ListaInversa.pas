program ListaInversa;

var
  numeros: array[1..100] of longint;
  numeros2: array[1..100] of longint;
  i, n, m1, m2: integer;

begin
  i := 1;
  read(n);
  while n <> 0 do
  begin
    numeros[i] := n;
    read(n);
    i := i + 1;
  end;
  m1 := i - 1;
  i := 1;
  read(n);
  while n <> 0 do
  begin
    numeros2[i] := n;
    read(n);
    i := i + 1;
  end;
  m2 := i - 1;
  for i := m1 downto 1 do
    write(numeros[i], ' ');
  writeln();
  for i := m2 downto 1 do
    write(numeros2[i], ' ');
end.