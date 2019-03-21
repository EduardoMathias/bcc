
program FatoresPrimos;

var 
  primos : array [1..4] of Integer;
  n, i : Integer;

begin
  primos[1] := 2;
  primos[2] := 3;
  primos[3] := 5;
  primos[4] := 823;
  i := 1;
  read(n);
  while (n > 1) do
    begin
      while (n mod primos[i] = 0) do
        begin
          write(primos[i], ' ');
          n := n div primos[i];
        end;
      i := i + 1;
    end;
end.
