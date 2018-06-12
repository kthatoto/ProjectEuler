max_divisor_count = 500
i = 1
triangle = 0
loop do
  triangle += i
  tmp_triangle = triangle
  factors = {}
  while tmp_triangle % 2 == 0
    factors[2.to_s.to_sym] = 0 if factors[2.to_s.to_sym].nil?
    tmp_triangle /= 2
    factors[2.to_s.to_sym] += 1
  end
  3.step(tmp_triangle, 2) do |n|
    while tmp_triangle % n == 0
      tmp_triangle /= n
      factors[n.to_s.to_sym] = 0 if factors[n.to_s.to_sym].nil?
      factors[n.to_s.to_sym] += 1
    end
    break if tmp_triangle == 1
  end
  unless factors.empty?
    break if factors.values.map{|n| n + 1}.inject(:*) > max_divisor_count
  end
  i += 1
end
puts triangle
