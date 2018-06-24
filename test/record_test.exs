defmodule RecordTest do
  use ExUnit.Case

  defmodule ScopeTest do
    use ExUnit.Case

    require Record
    Record.defrecordp :person, first_name: nil, last_name: nil, age: nil

    test "defrecordp" do
      # this is function call
      p = person(first_name: "Kai", last_name: "morgan", age: 5)
      # just a tuple
      assert p == {:person, "Kai", "morgan", 5}
    end
  end

  def sample do
    # special % syntax for struct creation
    %User{email: "kai@example.com", password: "trains"}
  end

  test "defstruct" do
    assert sample == %{__struct__: User, email: "kai@example.com", password: "trains"}
  end

  test "property" do
    assert sample.email == "kai@example.com"
  end

  test "update" do
    u = sample
    u2 = %User{u | email: "tim@example.com"}
    assert u2 == %User{email: "tim@example.com", password: "trains"}
  end

  test "protocol" do
    assert to_string(sample) == "kai@example.com"
  end
end
