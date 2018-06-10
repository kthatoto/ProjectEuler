n = 600_851_475_143
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
print primes[-1]
