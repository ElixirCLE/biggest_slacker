# BiggestSlacker

BiggestSlacker allows you to get a few statistics from your favorite Slack team :)
You'll need to [obtain a Slack API token first](https://api.slack.com/), and then export this as an
environment variable:  

```
export SLACK_TOKEN=your-awesome-token-1234
```

To hack on BiggestSlacker:  
```
mix deps.get
mix test.watch
```

## Installation (not there yet!)

When [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add biggest_slacker to your list of dependencies in `mix.exs`:

        def deps do
          [{:biggest_slacker, "~> 0.0.1"}]
        end

  2. Ensure biggest_slacker is started before your application:

        def application do
          [applications: [:biggest_slacker]]
        end
