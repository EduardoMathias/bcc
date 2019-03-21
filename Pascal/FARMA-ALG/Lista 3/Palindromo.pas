program Palindromo;

var 
    input : String;
    i : Integer;
    talvez : String;
begin
    read(input);
    talvez := 'Sim';
    for i := 1 to Length(input) div 2 do
        if input[i] <> input[Length(input) - i + 1] then talvez := 'Nao';
    WriteLn(talvez, ' eh palindromo');
end.