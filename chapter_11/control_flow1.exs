require IEx
defmodule FizzBuzz do
  def down_to(n) when n == 0 do
    []
  end

  def down_to(n) when n > 0 do
    case { rem(n, 3), rem(n, 5) } do
    {0, 0} -> IO.puts "FizzBuzz"
    {0, _} -> IO.puts "Fizz"
    {_, 0} -> IO.puts "Buzz"
    {_, _} -> IO.puts "#{n}"
    end
    down_to(n - 1)
  end
end

IO.puts FizzBuzz.down_to(21)
