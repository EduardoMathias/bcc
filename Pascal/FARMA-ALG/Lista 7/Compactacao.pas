program Compactacao;

type
  matriz = array [1..100, 0..100] of longint;
  
var
  original, compacta: matriz;
  i, j, size, size_m: longint;

procedure reduz();
var
  size_c, k: longint;
  presente: boolean;
begin
  size_c := 0;
  for i := 1 to size_m do
  begin
    for j := 1 to original[i][0] do
    begin
      presente := false;
      for k := 1 to size_c do
        if original[i][j] = compacta[i][k] then
          presente := true;
      if not presente then
      begin
        size_c := size_c + 1;
        compacta[i][size_c] := original[i][j];
      end;
    end;
    compacta[i][0] := size_c;
    size_c := 0;
  end;
end;

begin
  read(size);
  i := 0;
  while size <> 0 do
  begin
    i := i + 1;
    for j := 1 to size do
      read(original[i][j]);
    original[i][0] := size;
    read(size);
  end;
  size_m := i;
  reduz();
  for i := 1 to size_m do
  begin
    write('O: ');
    for j := 1 to original[i][0] do
      write(original[i][j], ' ');
    writeln();
    write('C: ');
    for j := 1 to compacta[i][0] do
      write(compacta[i][j], ' ');
    writeln();
  end;
end.
