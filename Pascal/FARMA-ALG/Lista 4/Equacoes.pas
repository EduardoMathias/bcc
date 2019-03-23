
program Equacoes;

var a, b, c, delta, r1, r2 : Real;

begin
  read(a, b, c);
  while (a <> 0) or (b <> 0) or (c <> 0) do
    begin
      if (a = 0) then WriteLn('nao eh equacao do segundo grau')
      else
        begin
          delta := (b * b) - ( 4 * a * c);
          if delta < 0 then WriteLn('nao tem raizes reais')
          else
            begin
              r1 := (-b + sqrt(delta)) / 2 * a;
              r2 := (-b - sqrt(delta)) / 2 * a;
              if r1 <> r2 then Writeln(r2:0:2, ' ', r1:0:2)
              else WriteLn(r1:0:2);
            end;
        end;
      read(a, b, c);
    end;
end.
