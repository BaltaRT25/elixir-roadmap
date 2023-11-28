# permite listar una serie de condiciones y se ejecuta el código que esté dentro
# de la primera condición encontrada como verdadera. En caso que ninguna se cumpla,
# se va al default que se agregue.
# En caso de que la cond regrese algo, se debe regresar siempre el mismo tipo. Ej strings, int, maps, etc

country = "ES"
product = 2

cond do
  country == "ES" && product == 1 -> IO.puts("El país es España y el producto es el primero")
  country == "MX" -> IO.puts("El país es México")
end
