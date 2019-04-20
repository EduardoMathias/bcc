
program Aniversario;

const MAX = 100;

var 
  i, j, k, n, x: Integer;
  aniversarios : array [1..30] of Integer;
  found : Boolean;
  soma : Real;
begin
  read(n);
  soma := 0.0;
  for i := 1 to MAX do
    begin
      for j := 1 to n do
        begin
          read(x);
          aniversarios[j] := x;
        end;
      j := 1;
      found := False;
      while (not found) and (j < n) do
        begin
          for k := 1 to n do
            if k <> j then
              if aniversarios[k] = aniversarios[j] then
                found := True;
          j := j + 1;
          if found then
            soma := soma + 1;
        end;
    end;
  WriteLn(soma / MAX:0:2);
end.
