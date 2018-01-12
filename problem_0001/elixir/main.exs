defmodule Problem0001 do
  def calculate(limit) do
    Enum.filter(1..(limit - 1), fn(n) ->
      (rem(n, 3) == 0) || (rem(n, 5) == 0)
    end) |> Enum.reduce(fn(n, sum) ->
      n + sum
    end)
  end
end
IO.puts Problem0001.calculate(1000)
