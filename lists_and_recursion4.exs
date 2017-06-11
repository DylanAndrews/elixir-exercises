require IEx
defmodule MyList do
  def span(from, to), do: _span([ from | to ])

  defp _span([head | tail ]) when head > tail do
    []
  end

  defp _span([head | tail]) do
    [ head | _span([head + 1 | tail])]
  end
end

MyList.span(1,4)
