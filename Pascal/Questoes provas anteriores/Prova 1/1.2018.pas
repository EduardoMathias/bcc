program nat;
var num,contador,n,i,j:longint;
begin
	num := 0;
	contador:= 0;
	read(n,i,j);
	while (contador < n) do
		begin
			if(num mod i = 0) or (num mod j = 0) then
				begin
				 	writeln(num);
			 		contador := contador + 1; 
			 	end;
			 num := num + 1;
			
		end;
end.
