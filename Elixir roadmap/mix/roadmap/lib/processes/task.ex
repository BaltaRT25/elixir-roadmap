defmodule Processes.Task do
  def double(x) do
    Task.async(fn ->
      :timer.sleep(2000)
      x * 2
    end)
  end

  def to_sup(x) do
    :timer.sleep(3000)
    x * 2
    raise "OH NO"
  end
end
