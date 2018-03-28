Program pas;
const n = 3;
const m = 21;
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
  
  for i:=1 to n do
    for j:=1 to m div 2 do
    begin
      v:= a[i,j];
      a[i,j] := a[i,m div 2 + m mod 2+j];
      a[i,m div 2 + m mod 2+j] := v;
    end;
  
  writeln();writeln();
  
  for i:= 1 to n do
  begin
    for j:= 1 to m do
      write(a[i,j]:4);
    writeln();
  end;
end.