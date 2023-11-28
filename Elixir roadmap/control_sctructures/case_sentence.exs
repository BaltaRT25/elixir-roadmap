defmodule Case_structure do
  def hello_world do
    case {:ok,"Hello world!"} do
      {:ok, result} -> result
      {:error} -> "Error!"
      _ -> "Catch all"
    end
  end
end

IO.puts(Case_structure.hello_world())
