
program Histograma;

var faixa1, faixa2, faixa3, n : Integer;

begin
  faixa1 := 0;
  faixa2 := 0;
  faixa3 := 0;
  read (n);
  while (n <> 0) do
    begin
      if (n mod 5 <> 0) then
        begin
          case n of 
            1..19 : faixa1 := faixa1 + 1;
            20..40 : faixa2 := faixa2 + 1;
            60..maxint : faixa3 := faixa3 + 1;
          end;
        end;
      read(n);
    end;
  WriteLn('menores que 20: ', faixa1);
  WriteLn('entre 20 e 40: ', faixa2);
  WriteLn('maiores que 60: ', faixa3);
end.
