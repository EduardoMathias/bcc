
program Uniao;

var 
  A, B : array[1..1000] of LongInt;
  i, j, k, n, tamanhoA, tamanhoB : LongInt;
  contido : Boolean;
begin
  i := 1;
  read(n);
  while n <> 0 do
    begin
      A[i] := n;
      read(n);
      i := i + 1;
    end;
  tamanhoA := i - 1;
  read(n);
  j := 1;
  while n <> 0 do
    begin
      B[j] := n;
      read(n);
      j := j + 1;
    end;
  tamanhoB := j - 1;
  for j := 1 to tamanhoB do
    begin
      contido := False;
      for k := 1 to tamanhoA do
        if B[j] = A[k] then
          contido := True;
      if not contido then
        begin
          A[i] := B[j];
          i := i + 1;
        end;
    end;
    tamanhoA := i - 1;
    for i := 1 to tamanhoA do
      write(A[i], ' ');
end.
