defmodule StatusesTest do
  use ExUnit.Case
  doctest Statuses

  test "greets the world" do
    assert Statuses.hello() == :world
  end
end
