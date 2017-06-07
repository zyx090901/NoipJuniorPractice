program pencil(input,output);
var
  m,n,i,j,x,min:longint;
  a:array[1..3,1..2] of longint;
begin
  assign(input,'pencil.in');
  assign(output,'pencil.out');
  reset(input);
  rewrite(output);
  min:=100000001;
  readln(m);
  for i:=1 to 3 do
    readln(a[i,1],a[i,2]);
  for i:=1 to 3 do
    begin
      if m mod a[i,1]=0 then
        x:=m div a[i,1]
        else x:=(m div a[i,1])+1;
      if (x*a[i,2])<min then min:=(x*a[i,2]);
    end;
  writeln(min);
  close(input);
  close(output);
end.

