require IEx

defmodule Capitalizer do
  def capitalize_sentences(sentence) do
    capitalized_list = map(
      String.split(sentence, "."), fn (str) -> String.capitalize(String.trim(str)) end
    )

    Enum.join(capitalized_list, ". ")
  end

  def map([], _func) do
    []
  end

  def map([head | tail], func) do
    [ func.(head) | map(tail, func)]
  end
end

IO.puts Capitalizer.capitalize_sentences("oh. a DOG. woof.")
