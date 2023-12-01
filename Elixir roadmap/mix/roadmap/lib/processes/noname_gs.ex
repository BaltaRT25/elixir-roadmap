defmodule Processes.NonameGs do
  use GenServer
  # API
  def start_link(args) do
    GenServer.start_link(__MODULE__, args)
  end

  def state do
    GenServer.call(__MODULE__, :get_state)
  end

  def enter_cinema(name, age) do
    GenServer.cast(__MODULE__, {:enter, name, age})
  end

  # SERVER
  def init(name: name) do
    IO.puts("El cine #{name} ha abierto. La fila para entrar a la función está disponible")
    {:ok, []}
  end

  def handle_call(:get_state, from, state) do
    IO.inspect(from, label: "FROM >>")
    {:reply, state, state}
  end

  def handle_cast({:enter, name, age}, state) when age < 18 do
    IO.puts("Debes ser mayor de edad para poder entrar")
    {:noreply, state}
  end

  def handle_cast({:enter, name, age}, state) do
    IO.puts("Bienvenido (a) #{name} a la sala, puedes entrar")
    {:noreply, [name | state]}
  end
end
