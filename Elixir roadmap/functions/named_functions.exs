# Podemos definir funciones con nombre para así poder referirnos a ellas luego.
# Estas funciones con nombre son definidas con la palabra clave def dentro de un módulo.

defmodule Greeter do
  def hello1(name) do
    "Hello, " <> name
  end

  def hello2(name), do: "Hello, " <> name

  def hello3 do
    nombres = ["Balta", "Poncho"]
    Enum.map(nombres, &hello1/1)
  end
end

IO.puts(Greeter.hello1("Balta"))
IO.puts(Greeter.hello2("Balta"))

# IO.puts(Greeter.hello ("Balta")) #no se puede por el nivel de acceso privado que sólo permite ejecutar en el mismo módulo

# si el cuerpo de la función sólo requiere una línea de código, se puede acortar con una coma
