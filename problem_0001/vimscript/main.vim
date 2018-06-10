let sum = 0
let n = 1000
for i in range(1, (n - 1))
  if i % 3 == 0 || i % 5 == 0
    let sum += i
  endif
endfor
echo sum
