defmodule BiggestSlacker.Stats do
  alias BiggestSlacker.Slack

  def top_slackers(channels) do
    channels
    |> Enum.map(&{&1.id, &1.name})
    |> Enum.map(fn({id, name}) -> {name, Slack.channel_history(id)} end)
    |> Enum.map(fn({name, hist_map}) -> {name, users_to_message_counts(hist_map.messages)} end)
    |> Enum.map(fn({name,list}) -> {name, Enum.at(list,0)} end)
    |> Enum.map(fn({channel_name, top_slacker}) ->
      case top_slacker do
        {user_id, count} -> {channel_name, Slack.slacker(user_id).name, count}
        _ -> {}
      end
    end)
  end

  def most_populated(channels) do
    channels
    |> Enum.sort(&(&1.num_members > &2.num_members))
    |> Enum.filter(&(&1.is_archived == false))
    |> Enum.map(&(%{name: &1.name, num_members: &1.num_members, id: &1.id}))
  end

  def users_to_message_counts(list_of_history) do
    list_of_history
    |> Enum.reduce(%{}, &(add_match(&1, &2)))
    |> Enum.sort(fn({_, v1}, {_, v2}) -> v1 > v2 end)
  end


  defp add_match(%{user: user}, map) do
    Map.update(map, user, 1, &(&1 + 1))
  end

end
