# You can think of filters as a sort of guard for comprehensions. When a filtered value returns false or nil it is excluded from the final list

import Integer

defmodule Filters do
  def get_evens(list) do
    for x <- list, is_even(x) do
      IO.puts(x)
    end
  end
end

Filters.get_evens(1..10)
