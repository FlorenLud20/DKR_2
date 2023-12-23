program z_2;

var
  s1, s2, t: string;
  i, j, k, sec: integer;
  
begin
  writeln('Введите строку: ');
  readln(s1);
  writeln('Введите подстроку: ');
  readln(s2);
  
  i:=1;
  while i <= length(s1) do
  begin
    k:=0;
    while ((i+k) <= length(s1)) and (k < length(s2)) and (s1[i+k] = s2[k+1]) do inc(k);
    if k = length(s2) then inc(sec);
    if (k = length(s2)) and (sec mod 2 = 0) then inc(i, k)
    else begin
      t+=s1[i];
      inc(i);
    end;
  end;
  s1:=t;
  writeln(s1);
end.