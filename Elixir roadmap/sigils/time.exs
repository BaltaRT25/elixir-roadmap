defmodule Time.Example do
  def get_time do
    ~T[23:00:07.0]
  end
end

time = Time.Example.get_time()

IO.puts(time.second)
