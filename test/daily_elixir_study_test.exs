defmodule DailyElixirStudyTest do
  use ExUnit.Case
  doctest DailyElixirStudy

  test "greets the world" do
    assert DailyElixirStudy.hello() == :world
  end
end
