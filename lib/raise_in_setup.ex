defmodule RaiseInSetup do
  @moduledoc """
  Documentation for `RaiseInSetup`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> RaiseInSetup.hello()
      :world

  """
  def hello do
    :world
  end

  def foo(term) when is_atom(term), do: {:foo, term}
end
