
program SegundosParaGraus;

var h, m, s : Int64;

begin
  read(s);
  h := s div 3600;
  s := s mod 3600;
  m := s div 60;
  s := s mod 60;
  writeln(h, ' grau(s), ', m, ' minuto(s), ', s, ' segundo(s)');
end.
