defmodule BiggestSlacker.Slack do
  alias Slackex.{Channels, Users}

  @max_count_allowed_per_request 1000

  def channels do
    Channels.list[:channels] |> Enum.sort(&(&1.num_members > &2.num_members))
  end

  def slackers do
    Users.list[:members]
  end

  def slacker(id) do
    Users.info(id)[:user]
  end

  def channel(id) do
    Channels.info(id)[:channel]
  end

  def channel_history(id) do
    Channels.history(id, %{count: @max_count_allowed_per_request})
  end

end
