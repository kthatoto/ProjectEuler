
def solve(digit)
  min = 10 ** (digit - 1)
  max = (10 ** digit) - 1
  found = false
  (max ** 2).downto(min ** 2) do |n|
    if n.to_s === n.to_s.reverse
      (min..max).each do |m|
        if n % m === 0 && (min <= (l = (n / m)) && l <= max)
          return n
        end
      end
      break if found
    end
  end
end
print solve(3)
