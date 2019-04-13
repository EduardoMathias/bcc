
program Repeticao;

var 
  valores: array [1..1000] of LongInt;
  repetidos: array[1..500] of LongInt;
  i, j, k, ultimoindice, aux, count, n: LongInt;

begin
  i := 1;
  read(n);
  while (n <> 0) do
    begin
      valores[i] := n;
      Read(n);
      i := i + 1;
    end;
  ultimoindice := i - 1;
  k := 1;
  for i := 1 to ultimoindice do
    begin
      if valores[i] <> 0 then
        begin
          aux := valores[i];
          valores[i] := 0;
          count := 0;
          for j := i + 1 to ultimoindice do
            begin
              if valores[j] = aux then
                begin
                  count := count + 1;
                  valores[j] := 0;
                end;
            end;
          if count > 0 then
            begin
              repetidos[k] := aux;
              k := k + 1;
            end;
        end;
    end;
  ultimoindice := k - 1;
  for i := 1 to ultimoindice do
    write(repetidos[i], ' ');
end.
