ary = [1, 2]
ary << ary[-1] + ary[-2] while ary[-1] + ary[-2] <= 4_000_000
puts ary.select(&:even?).inject(:+)
