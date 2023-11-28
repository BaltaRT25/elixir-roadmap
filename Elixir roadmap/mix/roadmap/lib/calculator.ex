defmodule Calculator do
  # Alias allows you to set up aliases for any given module name.
  # alias Calculator, as: Calculadora

  @moduledoc """
  The typical calculator that provides four basic operations between two numbers
  - Add
  - Subtract
  - Multiply
  - Divide
  """
  # To define input and output types we use the @spec directive placed right before the function definition
  # and taking as a params the name of the function, a list of parameter types, and after :: the type of the return value.
  # Es como una interface en C# sobre el nombre de la función, parámetros y qué debe regresar
  @spec add(number, number) :: number
  def add(number1, number2) do
    if validate_numbers(number1, number2) do
      {:ok, number1 + number2}
    else
      default_message()
    end
  end

  def subtract(number1, number2) do
    if validate_numbers(number1, number2) do
      {:ok, number1 - number2}
    else
      default_message()
    end
  end

  def multiply(number1, number2) do
    if validate_numbers(number1, number2) do
      {:ok, number1 * number2}
    else
      default_message()
    end
  end

  def validate_numbers(number1, number2) do
    if is_number(number1) and is_number(number2) do
      true
    end
  end

  def default_message do
    {:error, "Both params must be numbers. Float or integers"}
  end
end
