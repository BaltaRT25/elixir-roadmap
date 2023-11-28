defmodule Greeter do
  def hello(names) when is_list(names) do
    names = Enum.join(names, ", ")
    hello(names)
  end

  def hello(name) when is_binary(name) do
    phrase() <> name
  end

  # def hello(_) do
  #   :error
  # end

  defp phrase, do: "Hello, "
end

IO.puts(Greeter.hello(["Balta", "Poncho", "Iván", "Jyr", "Enrique"]))
# truena porque recibe una tupla
IO.puts(Greeter.hello({"Balta", "Poncho"}))
