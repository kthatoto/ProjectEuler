def solve(n)
  m = 3
  primes = [m]
  while 1 < n
    n /= m if n % m == 0
    while 1 < n
      m += 2
      if primes.all? {|p| 0 < m % p}
        primes << m
        break
      end
    end
  end
  return primes[-1]
end
print solve(600_851_475_143)
