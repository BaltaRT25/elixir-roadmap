defmodule Processes.App do
  use Application

  def start(type, args) do
    childs = [
      {Processes.Supervisor, []},
      {Processes.DynSup, []},
      {Task.Supervisor, [name: TSup]}
    ]

    Supervisor.start_link(childs, strategy: :one_for_one, name: __MODULE__)
  end
end
