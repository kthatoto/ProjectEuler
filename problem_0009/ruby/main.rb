sum = 1000
a = 0
1.upto(sum / 3) do |n|
  if (n**2) % (sum - n) == 0
    a = n
    break
  end
end
b = ((sum - a) / 2.0 - (a**2 / (sum - a)) / 2.0).to_i
c = ((sum - a) / 2.0 + (a**2 / (sum - a)) / 2.0).to_i
print a * b * c
