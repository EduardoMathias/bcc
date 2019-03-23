
program DigitoVerificador;

var 
  digitos : String;
  soma, i : Int64;
begin
  soma := 0;
  read(digitos);
  for i := 1 to 8 do
    soma := soma + (Ord(digitos[i]) - 48 ) * (9 - i + 1);

  if soma mod 10 = (Ord(digitos[9]) - 48) then
    WriteLn('SIM')
  else
    WriteLn('NAO');
end.
