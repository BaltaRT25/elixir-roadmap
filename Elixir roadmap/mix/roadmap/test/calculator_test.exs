defmodule CalculatorTest do
  use ExUnit.Case

  test "add two numbers" do
    assert Calculator.add(2, 2) == {:ok, 4}
  end

  test "Passing parameter as string instead of numbers" do
    assert Calculator.add("2", 2) == {:error, "Both params must be numbers. Float or integers"}
  end

  test "divide two numbers" do
    assert Calculator.divide(4, 2) == {:ok, 2}
  end

  test "Dividing by zero" do
    assert Calculator.divide(4, 0) == {:error, "No valid operation."}
  end
end
