n = 100
sum1 = (1..n).map{|m| m**2}.inject(:+)
sum2 = (1..n).inject(:+) ** 2
print sum2 - sum1
