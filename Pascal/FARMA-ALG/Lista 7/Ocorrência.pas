program ocorre;

const max = 100;

type vetor = array[1..max] of longint;

var v,v2:vetor;
    igual:boolean;
    it,i,i2,m,k,n,contador,indice:longint;


begin
read(m);
read(n);
for i:= 1 to m do
    read(v[i]);
for i2 := 1 to n do
    read(v2[i2]);


for it := 1 to m do
    begin
        if v[it] = v2[1] then
            begin
                igual := true;
            for k := 0 to n - 1 do
                if v[it + k] <> v2[k + 1] then
                    igual := false;
                if igual then
                    contador := contador + 1;
            end;
    end;

writeln(contador);

end.
