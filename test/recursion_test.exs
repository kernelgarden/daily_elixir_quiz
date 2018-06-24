defmodule RecursionTest do
  use ExUnit.Case

  import Fib

  test "fibonacci" do
    assert fib(0) == []
    assert fib(1) == [0]
    assert fib(2) == [0, 1]
    assert fib(10) == [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
  end

  import Fib2

  test "fibonacci2" do
    assert fib2(0) == []
    assert fib2(1) == [0]
    assert fib2(2) == [0, 1]
    assert fib2(10) == [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
  end

  test "benchmark" do
    {microsecs, _} = :timer.tc fn -> fib(1000) end
    IO.puts "fib() took #{microsecs} microsecs"
    {microsecs, _} = :timer.tc fn -> fib2(1000) end
    IO.puts "fib2() took #{microsecs} microsecs"
  end
end
