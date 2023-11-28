defmodule CalculatorTest do
  use ExUnit.Case

  # se va a inicializar 1 vez por módulo, va a ser global para todo el módulo
  setup_all do
    {:ok, number1: 2, number2: 2, number3: 0}
  end

  # se va a inicializar cada vez que se ejecuta un test
  # setup do
  #   {:ok, number1: 2, number2: 2, number3: 0}
  # end

  test "add two numbers", numbers do
    assert Calculator.add(numbers[:number1], numbers[:number2]) == {:ok, 4}
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
