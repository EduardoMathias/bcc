
program kalternante;

var k, par,impar, seq: longint;
begin
  read(k);
  read(seq);
  par := 0;
  impar := 0;
  while seq <> 0 do
    begin
      if (seq mod 2 = 0) then
        par := par +1
      else
        begin
          impar := impar + 1;
        end;
      read(seq);
    end;

  if (par = impar) and(par mod k = 0) then
    writeln('Sim eh k-alternante')
  else
    writeln('Nao eh k-alternante')
end.
