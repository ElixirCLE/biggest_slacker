defmodule BiggestSlacker do

  def sorted(list_of_channels) do
    Enum.sort(list_of_channels, &(&1.num_members > &2.num_members))
  end

  def users_to_message_counts(list_of_history) do
    list_of_history
    |> Enum.reduce(%{},fn(history_item, accumulator) -> add_match(accumulator, history_item) end)
    |> Enum.sort(fn({_, v1}, {_, v2}) -> v1 > v2 end)
  end

  defp add_match(map, %{user: user}) do
    Map.update(map, user, 1, &(&1 + 1))
  end

end
