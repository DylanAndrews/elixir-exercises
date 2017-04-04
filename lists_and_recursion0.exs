require IEx;
defmodule Sum do
  def sum([ head | [] ]) do
    IO.puts "#{head}"
  end

  def sum([ head | [ two_head | two_tail ] ]) do
    new_head = head + two_head
    sum([ new_head | two_tail ])
  end
end

Sum.sum([1, 2, 3])
