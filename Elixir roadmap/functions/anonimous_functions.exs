# Para definir una función anónima en Elixir necesitamos las palabras clave fn y end
# Dentro de estos podemos definir, separados por ->, cualquier número de parámetros y el cuerpo de la función.

sum = fn a, b -> a + b end
IO.puts(sum.(2, 3))

# Usar funciones anónimas es una práctica común en Elixir, hay un atajo para hacer esto:
sum = &(&1 + &2)
IO.puts(sum.(2, 3))
