defmodule BiggestSlackerTest do
  use ExUnit.Case
  doctest BiggestSlacker

  test "sorting channels by number of members" do
    list_of_channels = [%{id: "1", num_members: 1}, %{id: "2", num_members: 2}, %{id: "3", num_members: 3}]

    sorted_channels = BiggestSlacker.sorted(list_of_channels)

    assert sorted_channels == [%{id: "3", num_members: 3}, %{id: "2", num_members: 2}, %{id: "1", num_members: 1}]
  end

  @tag :skip
  test "getting the chattiest slackers in a list of channel history" do
    list_of_history = [%{type: "1", user: "dave"}, %{type: "2", user: "not_dave"}, %{type: "3", user: "dave"}]

    chattiest_slackers = BiggestSlacker.chattiest_in(list_of_history)

    assert chattiest_slackers == [{"dave", 2}, {"not_dave", 1}]
  end

end
