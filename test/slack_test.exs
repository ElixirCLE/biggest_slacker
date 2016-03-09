defmodule SlackTest do
  use ExUnit.Case
  alias BiggestSlacker.Slack
  doctest BiggestSlacker.Slack

  test "accessing channels from slack api" do
    assert length(Slack.channels) > 1
  end
  
end
