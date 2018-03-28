Program pas;
const n = 3;
const m = 20;
var
  a: array[1..n,1..m] of integer;  
  i,j,k,v:integer;
  flag:boolean;
begin
  k:=0;
  
  for i:= 1 to n do
    for j:= 1 to m do
      a[i,j] := random(200)-50;
      
  for i:= 1 to n do
  begin
    for j:= 1 to m do
      write(a[i,j]:4);
    writeln();
  end;
  
  for j:=m downto 1 do
  begin
    if k = 0 then
    begin
      flag := true;
      for i:=1 to n do
      begin
        if a[i,j] <= 0 then
          flag := false;
      end;
      if flag = true then 
        k := j;
    end;
  end;
  
  for i:=1 to n do
  begin
    v := a[i,1];
    a[i,1] := a[i,k];
    a[i,k] := v;
  end;
  
  writeln();writeln();
  
  for i:= 1 to n do
  begin
    for j:= 1 to m do
      write(a[i,j]:4);
    writeln();
  end;
end.