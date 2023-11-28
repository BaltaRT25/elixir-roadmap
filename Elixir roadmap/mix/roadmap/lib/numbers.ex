defmodule Numbers do
  @moduledoc """
  Provides a function to check if a number is greater or equal to another number.
  """
  def is_greater_or_equal_to(number1, number2) do
    if number1 > number2 do
      :greater_than
    else
      if number1 == number2 do
        :equal_to
      else
        :less_than
      end
    end
  end
end
