n = 10001
count = 1
i = 1
while count < n
  i += 2
  catch :next do
    3.step((i ** 0.5).to_i, 2) do |div|
      throw :next if i % div == 0
    end
    count += 1
  end
end
print i
