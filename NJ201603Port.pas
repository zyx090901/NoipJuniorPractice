program port(input,output);
var
  a:array[1..300000,1..2]of longint;
  b:array[1..100000]of longint;
  i,j,m,n,x,y,z,t,k,p,q,ans:longint;
begin
  readln(n);
  p:=0;q:=1;
  fillchar(b,sizeof(b),0);
  ans:=0;
  for i:=1 to n do
    begin
      read(t,k);
      for j:=1 to k do
        begin
         inc(p);
         read(x);
         b[x]:=1+b[x];
         if b[x]=1 then ans:=1+ans;
         a[p,1]:=x;
         a[p,2]:=t;
        end;
      while t-a[q,2]>=86400 do
        begin
          dec(b[a[q,1]]);
          if b[a[q,1]]=0 then dec(ans);
          q:=q+1;
        end;
      writeln(ans);
    end;
end.
