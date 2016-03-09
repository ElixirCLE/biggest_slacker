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

end
