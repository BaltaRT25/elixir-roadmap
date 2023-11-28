# A comprehension is made of three parts: generators, filters, and collectables.
# In the expression above, n <- [1, 2, 3, 4] is the generator.
# It is literally generating values to be used in the comprehension.
# Any enumerable can be passed on the right-hand side of the generator expression:

defmodule Comprehension do
  def list_example(list) do
    for x <- list do
      IO.puts(x * x)
    end
  end
end

Comprehension.list_example([1, 2, 3, 4])

# Generator expressions also support pattern matching on their left-hand side; all non-matching patterns are ignored
# Cuando se busca hacer patter matching In the event a match is not found, the value is ignored

for {:ok, val} <- [ok: "Hello", error: "Unknown", ok: "World"], do: val
