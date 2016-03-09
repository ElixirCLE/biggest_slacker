defmodule BiggestSlacker.Slack do
  alias Slackex.{Channels, Users}

  def channels do
    Channels.list[:channels]
  end

  def slackers do
    Users.list[:members]
  end

  def user(id) do
    Users.info(id)[:user]
  end

  def channel(id) do
    Channels.info(id)[:channel]
  end

end
