
program TrianguloPascal;

var c,y,x,n : LongInt;
begin
  readln(n);
  for y := 0 to n - 1 do
    begin
      c := 1;
      for x := 0 to y do
        begin
          write(c, ' ');
          c := c * (y - x) div (x + 1);
        end;
      writeln();
    end;
end.
