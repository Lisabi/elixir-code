defmodule Fizzbuzz do
  def main do
    Enum.each(1..100, fn current_num ->
      cond do
        rem(current_num, 15) == 0 -> IO.puts("Fizzbuzz")
        rem(current_num, 3) == 0 -> IO.puts("Buzz")
        rem(current_num, 5) == 0 -> IO.puts("Fizz")
        true -> current_num
      end
    end)
  end
end
