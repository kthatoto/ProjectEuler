max = 2_000_000
sum = 2
3.step(max, 2) do |n|
  catch :next do
    3.step((n ** 0.5).to_i, 2) do |m|
      throw :next if n % m == 0
    end
    sum += n
  end
end
print sum
