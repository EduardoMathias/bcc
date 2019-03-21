program SomaImpar;

var a, b, i, soma : Int64;

begin
  read(a,b);
  soma := 0;
  i := a;
  while (i <= b) do
    begin
      soma := soma + i;
      i := i + 2;
    end;
    WriteLn('Soma: ', soma);
end.