
program MediaPonderada;

var n, p, i, media, pesos, max : Int64;
    div0 : Boolean;

begin
  div0 := False;
  Read(max);
  if max = 0 then div0 := True;
  i := 1;
  pesos := 0;
  media := 0;
  while (i <= max) and not div0 do
    begin
      Read(n, p);
      if p = 0 then div0 := True
      else
        begin
          media := media + (n * p);
          pesos := pesos + p;
          i := i + 1;
        end;
    end;
    if not div0 then WriteLn(media / pesos)
    else WriteLn('divisao por zero')

end.
