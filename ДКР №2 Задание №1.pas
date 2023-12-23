program z_1;

const
  N = 5;
var
  arr: array[1..N] of Integer;
  k, sum: Integer;
  i: Integer;

begin
  writeln('Введите элементы массива:');
  for i := 1 to N do
  begin
    write('Элемент ', i, ': ');
    readln(arr[i]);
  end;

  write('Введите число k: ');
  readln(k);

  sum := 0;
  for i := 1 to N do
    sum := sum + arr[i];

  if sum > k then
    writeln('Сумма элементов массива превосходит число k.')
  else if sum = k then
    writeln('Сумма элементов массива равна числу k.')
  else
    writeln('Сумма элементов массива не превосходит число k.');
end.
