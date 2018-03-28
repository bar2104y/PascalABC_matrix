Program pas;
const n = 4;
const m = 4;
var
  a: array[0..n+1,0..m+1] of integer;  
  i,j,k,v:integer;
  flag:boolean;
begin
  
  for i:= 0 to n+1 do
    for j:= 0 to m+1 do
      a[i,j] := 32000;
  
  for i:= 1 to n do
    for j:= 1 to m do
      a[i,j] := random(200)-50;
      
  for i:= 1 to n do
  begin
    for j:= 1 to m do
      write(a[i,j]:4);
    writeln();
  end;
  
  for i:=1 to n do
    for j:=1 to m do
    begin
      if ((a[i,j]) < (a[i-1, j-1])) and ((a[i,j]) < (a[i-1, j])) and ((a[i,j]) < (a[i-1, j+1])) and {}((a[i,j]) < (a[i, j-1])) and ((a[i,j]) < (a[i, j+1])) and{} ((a[i,j]) < (a[i+1, j-1])) and ((a[i,j]) < (a[i+1, j])) and ((a[i,j]) < (a[i+1, j+1])) then
        a[i,j] := 0;
    end;
  
  writeln();writeln();
  
  for i:= 1 to n do
  begin
    for j:= 1 to m do
      write(a[i,j]:4);
    writeln();
  end;
end.