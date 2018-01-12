class Problem0001
  def self.calculate(limit)
    (1..(limit - 1)).select{|n|
      n % 3 == 0 || n % 5 == 0
    }.inject{|sum, n|
      sum + n
    }
  end
end
puts Problem0001.calculate(1000)
