defmodule InputOutput do
  @moduledoc false

  def get_name do
    IO.gets("what is your name?")
    |> String.trim
  end

  def get_cow_lover do
    IO.getn("Do you like cows? [y|n] ", 1)
  end

  def interrogate do
    name = get_name()
    case String.downcase(get_cow_lover()) do
      "y" ->
        IO.puts "Great! Here's a cow for you #{name}:"
        IO.puts cow_art()
      "n" ->
        IO.puts "That's a shame, #{name}."
      _ ->
        IO.puts "You shold have entered 'y' or 'n'."
    end
  end

  def cow_art do
    path = Path.expand("support/cow.txt", __DIR__)
    case File.read(path) do
      {:ok, art} -> art
      {:error, _} -> IO.puts "Error: cow.txt file not found"; System.halt(1)
    end
  end

end
