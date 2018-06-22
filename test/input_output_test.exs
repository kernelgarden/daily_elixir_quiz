defmodule InputOutputTest do
  use ExUnit.Case
  import String
  @moduledoc false

  test "checks if cow_art returns string from support/cow.txt" do
    art = InputOutput.cow_art
    assert trim(art) |> first == "("
  end

end
