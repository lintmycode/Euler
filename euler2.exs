# Each new term in the Fibonacci sequence is generated by adding the previous two terms.
# By starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5, 8, 12, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million,
# find the sum of the even-valued terms.

defmodule Euler do
  def sum_even_fib(limit), do: do_sum_even_fib(1, 2, limit, 0)

  # _a is not going to be used
  # if b > limit, return the sum
  defp do_sum_even_fib(_a, b, limit, acc) when b > limit, do: acc

  defp do_sum_even_fib(a, b, limit, acc) do
    do_sum_even_fib(b, a + b, limit, (if rem(b, 2) == 0, do: acc + b, else: acc))
  end
end

IO.puts Euler.sum_even_fib(4_000_000)
