# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

defmodule Euler do

  def largest_prime_factor(n), do: do_largest_prime_factor(n, 2)

  defp do_largest_prime_factor(1, largest_factor), do: largest_factor

  defp do_largest_prime_factor(n, factor) do
    if rem(n, factor) == 0 do
      do_largest_prime_factor(div(n, factor), factor) # div is integer division
    else
      do_largest_prime_factor(n, factor + 1)
    end
  end
end

IO.puts Euler.largest_prime_factor(28)
IO.puts Euler.largest_prime_factor(600_851_475_143)
