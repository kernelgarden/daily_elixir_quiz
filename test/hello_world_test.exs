defmodule HelloWorldTest do
  use ExUnit.Case
  @moduledoc false

  test "hello world test" do
    assert HelloWorld.print() == "Hello World!!!"
  end

end
