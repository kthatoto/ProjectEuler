n = 600_851_475_143
m = 3
loop do
  n /= m while n % m == 0
  break if n == 1
  m += 2
end
puts m
