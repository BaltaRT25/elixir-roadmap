defmodule Example.User do
  @enforce_keys [:name, :roles]
  defstruct [:name, :roles]

  def greeting(%__MODULE__{name: name, roles: roles}) do
    IO.puts("Hello #{name}, with roles #{roles}")
  end

  def new do
    %__MODULE__{name: "New", roles: ["New"]}
  end
end

# p = %Example.User{name: "Balta", roles: ["Software Engineer, Developer"]}

new = Example.User.new()
Example.User.greeting(new)
