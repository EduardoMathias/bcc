program amplitude;
var n,p,maj:real;
begin
read(n);
p:= n;
maj := n;
while(n <> 0) do
    begin
    if(n < p) then
      p := n
    else
      begin
      if (n > maj) then
        maj := n;
      end;
      read(n);
    end;
    writeln('Amplitude = ',maj - p:0:1);
end.
