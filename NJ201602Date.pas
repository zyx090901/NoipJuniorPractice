program date(input,output);
var
  m,n,i,j,x,y,z:longint;
  a:array[1..8]of integer;
  f:boolean;
begin
  readln(m);
  readln(n);
  x:=m;
  for i:=8 downto 1 do
     begin
       a[i]:=x mod 10;
       x:=x div 10;
     end;
  f:=true;
  for i:=1 to 4 do
    if a[i]<>a[9-i] then f:=false;
  if f then writeln(1)
    else writeln(0);
end.