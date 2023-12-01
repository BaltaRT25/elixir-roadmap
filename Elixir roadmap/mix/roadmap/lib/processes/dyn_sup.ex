defmodule Processes.DynSup do
  use DynamicSupervisor

  def start_link(_args) do
    DynamicSupervisor.start_link(__MODULE__, nil, name: __MODULE__)
  end

  def add_child(module, args) when is_atom(module) and is_list(args) do
    child_spec = {module, args}
    DynamicSupervisor.start_child(__MODULE__, child_spec)
  end

  @impl true
  def init(_args) do
    DynamicSupervisor.init(strategy: :one_for_one)
  end
end
