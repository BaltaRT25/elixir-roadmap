defmodule Processes.GsCalculator do
  use GenServer

  # API
  def start_link(_args) do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  def add(number1, number2) do
    GenServer.call(__MODULE__, {:add, number1, number2})
  end

  def divide(number1, number2) do
    GenServer.call(__MODULE__, {:divide, number1, number2})
  end

  def mult(number1, number2) do
    GenServer.call(__MODULE__, {:mult, number1, number2})
  end

  def state do
    GenServer.call(__MODULE__, :get_state)
  end

  # SERVER
  def init(args) do
    IO.puts("Inicializando el servidor de calculadora")
    {:ok, args}
  end

  def handle_call(:get_state, from, state) do
    IO.inspect(from, label: "FROM >>")
    {:reply, state, state}
  end

  def handle_call({:add, number1, number2}, _from, state) do
    state = number1 + number2
    {:reply, state, state}
  end

  def handle_call({:divide, number1, number2}, _from, state) do
    state = number1 / number2
    {:reply, state, state}
  end

  def handle_call({:mult, number1, number2}, _from, state) do
    state = number1 * number2
    {:reply, state, state}
  end
end
