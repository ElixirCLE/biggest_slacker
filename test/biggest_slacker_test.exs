defmodule BiggestSlackerTest do
  use ExUnit.Case
  alias BiggestSlacker.Slack
  doctest BiggestSlacker

  test "accessing channels from slack api" do
    channels = Slack.channels
    assert length(channels) > 1
  end
end
