defmodule BiggestSlacker.Slack do
  alias Slackex.{Channels, Users}

  def channels do
    Channels.list[:channels]
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
    Channels.history(id, %{count: 1000})
  end

end
