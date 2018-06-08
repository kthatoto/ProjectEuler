min = 100 ** 2
max = 999 ** 2
found = false
max.downto(min) do |n|
  if n.to_s === n.to_s.reverse
    (100..999).each do |m|
      if n % m === 0 && (100 <= (l = (n / m)) && l <= 999)
        puts n
        found = true
        break
      end
    end
    break if found
  end
end
