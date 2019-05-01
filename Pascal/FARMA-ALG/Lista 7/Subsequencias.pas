// esse é sem dúvida o pior ex até agr
// aliás, esse modelo é o que tá no enunciado do farma-alg, eu só fiz a function e o procedure

program escolha_um_nome_bom;

const MAX = 100;

type vetor = array [1..MAX] of longint;

var
    v : vetor;
    n, pos, tamanho_subsequencia: longint;

procedure ler_vetor (var v: vetor; n: longint);
(* procedure para ler um vetor "v" de "n" inteiros *)
var i : longint;
begin
    for i := 1 to n do
    read(v[i]);
end;

function tem_subsequencia_iguais (v: vetor; n, tam_seg: longint): longint;
(*
recebe uma subsequencia "v" que em tamanho "n" e procura por subsequencias
iguais de tamanho "tam_seg". A funcao devolve zero se nao encontrou
subsequencias iguais ou devolve a posicao do inicio da primeira subsequencia
que encontrou.
*)
var i, j, k, aparece : longint;
    aux : vetor;
    achou, igual : boolean;
begin
    i := 0;
    achou := false;
    while (i <= n) and (not achou) do
    begin
        for j := 1 to tam_seg do
            aux[j] := v[j + i];
        aparece := 0;
        for j := 0 to n do
        begin
            igual := true;
            for k := 1 to tam_seg do
                if aux[k] <> v[j + k] then
                    igual := false;
            if igual then
                aparece := aparece + 1;
        end;
        if aparece > 1 then achou := true;
        i := i + 1;
    end;
    if achou then
        tem_subsequencia_iguais := i
    else
        tem_subsequencia_iguais := 0;
end;

(* programa principal *)
begin
    read (n);
    // tamanho da subsequencia a ser lido
    ler_vetor (v,n); 
    pos:= 0;
    tamanho_subsequencia:= n div 2; // inicia com maior valor possivel
    while (pos = 0) and (tamanho_subsequencia >= 2) do
    begin
         pos:= tem_subsequencia_iguais (v,n,tamanho_subsequencia);
         tamanho_subsequencia:= tamanho_subsequencia - 1;
    end;
    if pos > 0 then
        writeln (pos,' ',tamanho_subsequencia+1)
    else
        writeln ('nenhuma');
end.
