defmodule BiggestSlacker.Slack do

  def channels do
    Slackex.Channels.list[:channels]
  end

  def slackers do
    Slackex.Users.list[:members]
  end

  def user(id) do
    Slackex.Users.info(id)[:user]
  end

end
