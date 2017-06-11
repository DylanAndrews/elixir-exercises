require IEx;
defmodule Enumemulator do
  def all([], _) do
    true
  end

  def all([head | tail], func) do
    if func.(head) == true do
      all(tail, func)
    else
      false
    end
  end


# This is not my solution. I found this here https://goo.gl/cij6lo
  def split([head | tail], count) when count > 0 do
    {left, right} = split(tail, count-1)
    {[head | left], right}
  end

  def split(list, _count) do
    {[], list}
  end

  def take([head | tail], count) when count > 0 do
    [head | take(tail, count - 1)]
  end


  def take(_list, count) when count == 0 do
    []
  end

  def take(list, count) when count < 0 do
    reverse(take(reverse(list), count * -1))
  end

# This is not my reverse function. I found this here https://goo.gl/f9oMnW
  defp reverse(list) do
    reverse(list,[])
  end

  defp reverse([h|t],result) do
    reversed = [h] ++ result
    reverse(t,reversed)
  end

  defp reverse([],result) do
    result
  end
end
