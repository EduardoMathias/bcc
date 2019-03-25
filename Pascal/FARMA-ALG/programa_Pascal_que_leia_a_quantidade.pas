program programa_Pascal_que_leia_a_quantidade_de_termosne_escreva_o_valor_de_S;
var n,i:double;
	soma,potencia: double;
begin
	i := 0;
	soma:= 0;
	potencia:= 0.5;
	read(n);
	while(i < n) do
	begin
	 	soma:= soma + (potencia*2/(n-1)); 
	 	i:= i+ 1;
	end;
	writeln(soma);
end.


//gato de schrondigger
