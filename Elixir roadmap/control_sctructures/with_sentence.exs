# with es útil cuando se desea usar un case anidado o en situaciones en que no se vea tan limpia la solución
# with está compuesto de palabra clave, generadores y finalmente una expresión
# soporta el uso de else como cuando se utiliza un if

user = %{first: "Balta", last: "Ramírez"}

with {:ok, first} <- Map.fetch(user, :first),
     {:ok, last} <- Map.fetch(user, :last) do
  IO.puts(last <> ", " <> first)
end

# user = %{first: "doomspork"}
# with {:ok,first} <- Map.fetch(user, :first),
# {:ok,last} <- Map.fetch(user, :last)
#  do IO.puts(last <> ", " <> first)
# end
