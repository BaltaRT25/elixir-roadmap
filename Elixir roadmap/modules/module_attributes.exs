# Los atributos de un módulo son comúnmente usados como constantes en Elixir
defmodule Example do
  @greeting "Hello"

  def greeting(name) do
    ~s(#{@greeting} #{name}.)
  end
end

IO.puts(Example.greeting("Balta"))

# Es importante destacar que hay atributos reservados en Elixir. Los tres más comunes son:

# moduledoc — Documenta el módulo actual.
# doc — Documentación para funciones y macros.
# behaviour — Usa OTP o comportamiento definido por el usuario.
