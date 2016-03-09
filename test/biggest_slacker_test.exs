defmodule BiggestSlackerTest do
  use ExUnit.Case
  doctest BiggestSlacker

  test "sorting channels by number of members" do
    list_of_channels = [%{id: "1", num_members: 1}, %{id: "2", num_members: 2}, %{id: "3", num_members: 3}]

    sorted_channels = BiggestSlacker.sorted(list_of_channels)

    assert sorted_channels == [%{id: "3", num_members: 3}, %{id: "2", num_members: 2}, %{id: "1", num_members: 1}]
  end

end
