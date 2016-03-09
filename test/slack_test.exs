defmodule SlackTest do
  use ExUnit.Case
  alias BiggestSlacker.Slack
  doctest BiggestSlacker.Slack

  test "accessing channels from the slack api" do
    assert length(Slack.channels) > 1
  end

  test "accessing users from the slack api" do
    assert length(Slack.slackers) > 1
  end

  test "accesing a single users info from the slack api" do
    user = Slack.user("U0CGMTEQ4")

    assert user.name == "daveshah"
  end

  test "accessing a channel by id" do
    channel = Slack.channel("C04MYHT8Q")

    assert channel.name == "announcements"
  end

end
