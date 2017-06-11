require IEx

defmodule StringChecker do
  def asc(str) do
    Enum.all?(str, fn(x) ->
      x >= 31 && x <= 126
    end)
  end
end

defmodule AnagramChecker do
  def is_anagram(word1, word2) do
    String.reverse(word1) == word2
  end
end

IO.puts StringChecker.asc('what')
# AnagramChecker.is_anagram("what", "tahw")
