max = 4_000_000
ary = [1, 2]
ary << ary[-1] + ary[-2] while ary[-1] + ary[-2] <= max
print ary.select(&:even?).inject(:+)
