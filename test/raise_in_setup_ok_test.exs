defmodule RaiseInSetupOKTest do
  use ExUnit.Case
  doctest RaiseInSetup

  setup do
    on_exit(fn ->
      RaiseInSetup.foo(:atom)
    end)
  end

  test "raises with OK setup, and faulty function call" do
    assert RaiseInSetup.foo("string") == {:foo, :atom}
  end
end
