def solve(n)
  m = 3
  loop do
    n /= m while n % m == 0
    break if n == 1
    m += 2
  end
  return m
end
print solve(600_851_475_143)
