defmodule RaiseInSetupFaultyTest do
  use ExUnit.Case

  setup do
    on_exit(fn ->
      RaiseInSetup.foo("string")
    end)
  end

  test "raises with faulty setup" do
    assert RaiseInSetup.foo(:atom) == {:foo, :atom}
  end
end
