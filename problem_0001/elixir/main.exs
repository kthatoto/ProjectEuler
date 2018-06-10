n = 1000
IO.puts Enum.filter(1..(n - 1), fn(m) ->
  (rem(m, 3) == 0) || (rem(m, 5) == 0)
end) |> Enum.reduce(fn(m, sum) ->
  m + sum
end)
