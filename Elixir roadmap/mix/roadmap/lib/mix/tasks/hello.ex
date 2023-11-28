defmodule Mix.Tasks.Hello do
  @moduledoc "The hello mix task: `mix help hello`"
  use Mix.Task

  # We use import whenever we want to access functions or macros from other modules without using the fully-qualified name.
  # Note we can only import public functions, as private functions are never accessible externally.
  import Calculator

  # permite saber qué hace una función cuando se ejecuta el comando mix help nombrefuncion
  @shortdoc "Simply calls the Roadmap.say/0 function."
  def run(_) do
    # This will start our application
    # Mix.Task.run("app.start")

    Roadmap.say()
    {:ok, s} = add(2, 3)
    Mix.shell().info(to_string(s))
  end
end
