program enaixa;
var i,j,a,b,c:longint;
	encaixa : integer;
begin
	i:= 0;
	j:= 0;
	read(a,b);
	if(a< b) then
	 writeln('Nao encaixa')
	else
	begin
	c := b;
	encaixa := 1;
	while (c div 10 > 0) do
		begin
			c := c div 10;
			i:= i+ 1;
		end;
	a:= a - b;
	while(j < i) do
		begin
			if(a mod 10 <> 0) then
				encaixa := 0
			else 
				begin

				end;
		a := a div 10;
		j := j+ 1;
		end;
	if (encaixa = 1) then
		writeln('ENCAIXA')
	else 
		writeln('NAO ENCAIXA');
	end;
end.
