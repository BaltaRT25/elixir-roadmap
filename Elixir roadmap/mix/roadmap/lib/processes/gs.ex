defmodule Processes.Gs do
  use GenServer

  # API
  def start_link() do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  def state do
    GenServer.call(__MODULE__, :get_state)
  end

  def add(item) do
    GenServer.cast(__MODULE__, {:add, item})
  end

  def delete_item(item) do
    GenServer.call(__MODULE__, {:delete, item})
  end

  # SERVER
  def init(args) do
    {:ok, args}
  end

  # También se puede regresar un stop o un ignore al iniciar un GenServer
  # con stop se detiene el Genserver, con ignore ignora el error pero no detiene el GenServer
  # def init(_args) do
  #   {:stop, "Error al iniciar"}
  # end

  # def init(_args) do
  #   {:ignore}
  # end

  def handle_call({:delete, item}, _from, state) do
    update_state = List.delete(state, item)
    {:reply, update_state, update_state}
  end

  def handle_call(:get_state, from, state) do
    IO.inspect(from, label: "FROM >>")
    {:reply, state, state}
  end

  def handle_cast({:add, item}, state) do
    updated_state = [item | state]

    {:noreply, updated_state}
  end
end
