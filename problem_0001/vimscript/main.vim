let sum = 0
for i in range(1, 999)
  if i % 3 == 0 || i % 5 == 0
    let sum += i
  endif
endfor
echo sum
