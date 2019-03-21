// agora passa 




program CalculoDeSerie;

var 
  soma, anterior, termo : Real;
  sinal, fat, i: Int64;
  dif : Boolean;
begin

  soma := 1 - 1/2;
  sinal := 1;
  fat := 2;
  dif := True;
  anterior := 1/2;
  i := 2;
  while (dif) do
    begin
      fat := fat * (i + 1) * (i + 2);
      termo := 1 / fat;
      soma := soma + sinal * termo;
      dif := anterior - termo >= 0.0001;
      anterior := termo;
      sinal := sinal * -1;
      i := i + 2;
    end;
  WriteLn(soma:0:15);
end.
