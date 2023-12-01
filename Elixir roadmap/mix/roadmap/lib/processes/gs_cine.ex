defmodule Processes.GsCine do
  use GenServer
  # API
  def start_link(_args) do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  def state do
    GenServer.call(__MODULE__, :get_state)
  end

  def enter_cinema(age) do
    GenServer.cast(__MODULE__, {:enter, age})
  end

  # SERVER
  def init(args) do
    IO.puts("El cine ha abierto. La fila para entrar a la función está disponible")
    {:ok, args}
  end

  def handle_call(:get_state, from, state) do
    IO.inspect(from, label: "FROM >>")
    {:reply, state, state}
  end

  def handle_cast({:enter, age}, state) when age < 18 do
    IO.puts("Debes ser mayor de edad para poder entrar")
    {:noreply, state}
  end

  def handle_cast({:enter, age}, state) do
    IO.puts("Bienvenido (a) a la sala, puedes entrar")
    {:noreply, [age | state]}
  end
end
