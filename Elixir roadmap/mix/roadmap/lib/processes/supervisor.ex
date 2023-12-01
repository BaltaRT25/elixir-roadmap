defmodule Processes.Supervisor do
  use Supervisor

  # API
  def start_link(_args) do
    Supervisor.start_link(__MODULE__, [])
  end

  # SERVER
  def init(_args) do
    childs = [
      {Processes.GsCine, []},
      {Processes.GsCalculator, []}
    ]

    Supervisor.init(childs, strategy: :one_for_one)
    # {:ok, args}
  end
end
