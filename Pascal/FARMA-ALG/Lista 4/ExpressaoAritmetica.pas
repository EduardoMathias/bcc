
program ExpressaoAritmetica;

var 
  result, p : Double;
  a, b, c, d, e, f : Double;
  div0 : Boolean;
begin
  div0 := False;
  read(a, b, c, d, e, f);
  result := a + b;
  if c - d = 0 then div0 := True
  else
    begin
      result := result / (c - d) * e;
      if a * b = 0 then div0 := True
      else
        begin
          p := f / (a * b) + e;
          if p = 0 then div0 := True
          else
            result := result / p;
        end;
    end;
  if div0 then
    WriteLn('divisao por zero')
  else
    WriteLn(result);
end.
