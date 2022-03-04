defmodule PipingServerTest do
  use ExUnit.Case
  doctest PipingServer

  test "greets the world" do
    assert PipingServer.hello() == :world
  end
end
