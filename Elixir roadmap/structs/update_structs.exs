defmodule Subscriber do
  @moduledoc """
  Provides 3 functions to allow define, create and update a user
  """
  defstruct [:first_name, :last_name]

  def define_new_user(first_name, last_name) do
    %__MODULE__{first_name: first_name, last_name: last_name}
  end

  @doc """
  Create a user for the app

  ## Parameters

    - first_name: String that represents the first name of the person.
    - last_name: String that represents the last name of the person.
  """
  def create_user(%__MODULE__{first_name: first_name, last_name: last_name}) do
    IO.puts("User with name #{first_name} and last name #{last_name} was created")
  end

  def update_user(first_name, last_name) do
    %__MODULE__{
      %__MODULE__{first_name: first_name, last_name: last_name}
      | first_name: first_name
    }
  end
end

user1 = Subscriber.define_new_user("Balta", "Ramírez")
user2 = Subscriber.define_new_user("Poncho", "Martínez")

Subscriber.create_user(user1)
Subscriber.create_user(user2)

user1_updated = Subscriber.update_user("Baltazar", user1.last_name)

IO.puts(
  "The user with name #{user1.first_name} was updated. Now the new name is #{user1_updated.first_name} and the last name it's still #{user1_updated.last_name}."
)
