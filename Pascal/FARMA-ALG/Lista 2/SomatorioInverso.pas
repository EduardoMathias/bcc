
program SomatorioInverso;

var 
  soma, anterior : Real;
  n, i: Integer;

begin
  read(n);
  soma := 0;
  i := 1;
  while (n > 0) do
    begin
      soma := soma + i / n;
      n := n - 1;
      i := i + 1;
    end;
  writeln('Somatorio: ', soma:0:2);
end.
