defmodule StatsTest do
  use ExUnit.Case
  alias BiggestSlacker.Stats
  doctest BiggestSlacker.Stats

  test "getting the chattiest slackers in a list of channel history" do
    list_of_history = [%{type: "1", user: "dave"}, %{type: "1", user: "not_dave"}, %{type: "1", user: "dave"}]

    chattiest_slackers = Stats.users_to_message_counts(list_of_history)

    assert chattiest_slackers == [{"dave", 2}, {"not_dave", 1}]
  end

end
