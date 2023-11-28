defmodule Date.Example do
  def get_date do
    ~D[2023-11-23]
  end
end

date = Date.Example.get_date()

IO.puts(date.day)
