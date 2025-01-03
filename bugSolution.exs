```elixir
list = [1, 2, 3, 4, 5]

# Using List.delete and creating a new list
new_list = Enum.filter(list, fn x -> x != 3 end)
IO.inspect(new_list)

#Alternative approach: Using recursion

defmodule ListModifier do
  def remove_element(list, element) do
    remove_element(list, element, [])
  end

  defp remove_element([], _element, acc), do: Enum.reverse(acc)
  defp remove_element([head | tail], element, acc) do
    if head == element do
      remove_element(tail, element, acc)
    else
      remove_element(tail, element, [head | acc])
    end
  end
end

modified_list = ListModifier.remove_element(list,3)
IO.inspect(modified_list)

# Alternative approach: Using list comprehension

modified_list2 = for x <- list, x != 3, do: x
IO.inspect(modified_list2)
```