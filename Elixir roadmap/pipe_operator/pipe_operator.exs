# The pipe takes the result on the left, and passes it to the right hand side.
# El resultado de izquierda a derecha, es tomado como primer argumento de la función siguiente
# For example
# foo(bar(baz(new_function(other_function()))))
# and with pipe operator
# other_function() |> new_function() |> baz() |> bar() |> foo()

defmodule User do
  def define_full_name(first_name, last_name) do
    first_name <> " " <> last_name
  end

  def define_last_name(last_name) do
    last_name
  end

  def define_first_name(first_name) do
    first_name
  end

  def concat_without_pipe_operator(first_name, last_name) do
    define_first_name(first_name <> " " <> define_last_name(last_name))
  end

  def concat_with_pipe_operator(first_name, last_name) do
    define_first_name(first_name)
    |> define_full_name(last_name)
  end
end

IO.puts(
  "Concat without pipe operator: " <>
    User.concat_without_pipe_operator(
      "Balta",
      "Ramírez"
    )
)

IO.puts("Concat with pipe operator: " <> User.concat_with_pipe_operator("Balta", "Ramírez"))
