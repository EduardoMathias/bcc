
program EquacoesLineares;

var a11, a12, b1, a21, a22, b2, x, y : Real;

begin
  read(a11, a12, b1, a21, a22, b2);
  y := ((b2 * a11) - (a21 * b1)) / ((-a21 * a12) + (a11 * a22));
  x := (b1 - a12 * y) / a11;
  writeln('x = ', x:0:3);
  write('y = ', y:0:3);
end.
