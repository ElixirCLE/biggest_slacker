defmodule BiggestSlacker.Slack do

  def channels do
    Slackex.Channels.list[:channels]
  end

end
