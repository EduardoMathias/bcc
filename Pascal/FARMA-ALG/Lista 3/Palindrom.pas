program palindromo;

var n, copy, inv : LongInt;

begin
  Read(n);
  copy := n;
  inv := 0;
  while n > 0 do
  begin
    inv := inv * 10 + (n mod 10);
    n := n div 10;
  end;
  if inv <> copy then
    Writeln('Nao eh palindromo')
  else 
    WriteLn('Sim eh palindromo');
end.