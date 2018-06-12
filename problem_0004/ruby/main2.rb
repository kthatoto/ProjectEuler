digit = 3
min = 10 ** (digit - 1)
max = (10 ** digit) - 1
catch :break do
  (max ** 2).downto(min ** 2) do |n|
    next if n.to_s != n.to_s.reverse
    (min..max).each do |m|
      l = n / m
      if n % m === 0 && min <= l && l <= max
        print n
        throw :break
      end
    end
  end
end
