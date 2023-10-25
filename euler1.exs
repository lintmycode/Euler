# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

defmodule Euler do

  # if version
  def multiples_if(limit) do
    Enum.reduce(1..(limit - 1), 0, fn x, acc ->
      if rem(x, 3) == 0 or rem(x, 5) == 0 do
        acc + x
      else
        acc
      end
    end)
  end

  # function chaining
  def multiples_chain(limit) do
    1..(limit - 1)
    |> Enum.filter(fn x-> rem(x, 3) == 0 or rem(x, 5) == 0 end)
    |> Enum.sum()
  end

  # pattern matching
  def multiples_matching(limit) do
    Enum.reduce(1..(limit - 1), 0, fn n, acc ->
      acc + case {rem(n, 3), rem(n, 5)} do
        {0, _} -> n    # divisible by 3
        {_, 0} -> n    # divisible by 5
        _ -> 0         # divisible by neither
      end
    end)
  end
end

IO.puts Euler.multiples_if(1000)
IO.puts Euler.multiples_chain(1000)
IO.puts Euler.multiples_matching(1000)
