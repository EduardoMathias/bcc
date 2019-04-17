{ WTF 100 VETORES PRA QUE??? QUER FORÇAR A USAR MATRIZ???????????? }

program Aniversario;

const MAX = 100;

var 
  i, j, k, n, x: Integer;
  matriz : array [1..MAX, 1..30] of Integer;
  found : Boolean;
  soma : Real;
begin
  read(n);
  for i := 1 to MAX do
    for j := 1 to n do
      begin
        read(x);
        matriz[i][j] := x;
      end;
  soma := 0.0;
  for i := 1 to MAX do
    begin
      j := 1;
      found := False;
      while (not found) and (j < n) do
        begin
          for k := 1 to n do
            if k <> j then
              if matriz[i][k] = matriz[i][j] then
                found := True;
          j := j + 1;
        end;
      if found then
        soma := soma + 1;
    end;
  WriteLn(soma / MAX:0:2);
end.
