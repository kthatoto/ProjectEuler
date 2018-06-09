factors = {}
(1..20).each do |m|
  m_tmp = m
  (2..m).each do |l|
    count = 0
    while m_tmp % l == 0
      m_tmp /= l
      count += 1
    end
    factors[l] = count if factors[l].to_i < count
  end
end
puts factors.map{|factor, count|
  factor ** count
}.inject(:*)
