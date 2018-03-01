defmodule VoxboneTest do
  use ExUnit.Case
  doctest Voxbone

  test "greets the world" do
    assert Voxbone.hello() == :world
  end
end
