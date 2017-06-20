program date(input,output);
var
  m,n,i,j,x,y,z,month,dat,ans:longint;
  a:array[1..8]of integer;
  f:boolean;
  b:array[0..99,0..99]of boolean;
begin
  for i:=0 to 99 do
    for j:=0 to 99 do
      b[i,j]:=false;
  for i:=1 to 31 do
    begin
      b[1,i]:=true; b[8,i]:=true;
      b[3,i]:=true; b[10,i]:=true;
      b[5,i]:=true; b[12,i]:=true;
      b[7,i]:=true;
    end;
  for i:=1 to 30 do
    begin
      b[4,i]:=true;  b[6,i]:=true;
      b[9,i]:=true;  b[11,i]:=true;
    end;
  for i:=1 to 28 do b[2,i]:=true;
  readln(m);
  readln(n);
  if m=n then
    begin
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
    end
  else if m<>n then
    begin
      ans:=0;
      for i:=m to n do if i=92200229 then ans:=ans+1;
      y:=m div 10000; z:=n div 10000;
      for i:=y to z do
        begin
          x:=i;
          for j:=1 to 4 do
            begin
              a[j]:=x mod 10;
              x:=x div 10;
            end;
          month:=10*a[1]+a[2];
          dat:=10*a[3]+a[4];
          if b[month,dat]=true then ans:=ans+1;
        end;
      writeln(ans);
    end;
end.
