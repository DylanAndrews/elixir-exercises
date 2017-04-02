require IEx;
defmodule Chop do
  def guess(answer, first..last) do
    guess = div(last - first, 2) + first
    IO.puts "Is it #{guess}"

    ask_again(answer, guess, first..last)
  end

  def ask_again(answer, guess, first.._) when guess > answer  do
    guess(answer, first..guess)
  end

  def ask_again(answer, guess, _..last) when guess < answer  do
    guess(answer, (guess + 1)..last)
  end

  def ask_again(answer, guess, _) when answer == guess do
    IO.puts "#{guess}"
  end
end

Chop.guess(301, 1..500)
