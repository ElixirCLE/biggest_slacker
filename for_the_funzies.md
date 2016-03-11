List rooms by most populated:
```elixir
iex(19)> BiggestSlacker.Slack.channels |> BiggestSlacker.Stats.most_populated
[%{name: "announcements", num_members: 356},
 %{name: "random", num_members: 339}, %{name: "intro", num_members: 336},
 %{name: "jobs", num_members: 107}, %{name: "chitchat", num_members: 83},
 %{name: "clerb", num_members: 78}, %{name: "clejs", num_members: 75},
 %{name: "devops-cle", num_members: 63}, %{name: "clefed", num_members: 63},
 %{name: "refreshcleveland", num_members: 44},
 %{name: "talks", num_members: 42}, %{name: "acc", num_members: 41},
 %{name: "cle-tech-breakfasts", num_members: 38},
 %{name: "xddcle", num_members: 37}, %{name: "codemash", num_members: 36},
 %{name: "clepy", num_members: 36}, %{name: "railsbridge-cle", num_members: 32},
 %{name: "clec-sharp", num_members: 30}, %{name: "cocoaheads", num_members: 25},
 %{name: "civichackers", num_members: 24},
 %{name: "conferences", num_members: 20},
 %{name: "embeddedsystems", num_members: 18},
 %{name: "marketplace", num_members: 17}, %{name: "makerchat", num_members: 17},
 %{name: "erlang", num_members: 17}, %{name: "coworking", num_members: 17},
 %{name: "akron-women-in-tech", num_members: 17},
 %{name: "thatsmyjam", num_members: 16}, %{name: "games", num_members: 16},
 %{name: "heavy-metal", num_members: 13},
 %{name: "ixdacleveland", num_members: 12},
 %{name: "clelephpants", num_members: 11}, %{name: "cleag", num_members: 11},
 %{name: "nodeschool", num_members: 10}, %{name: "electronics", num_members: 9},
 %{name: "coderetreat", num_members: 8},
 %{name: "giphyfreeforall", num_members: 7},
 %{name: "starwars-spoilers", num_members: 5},
 %{name: "mongodb", num_members: 5},
 %{name: "code-summit-county", num_members: 5},
 %{name: "clegolang", num_members: 5}, %{name: "meta", num_members: 4},
 %{name: "java", num_members: 3}]
iex(20)> 
```

Chattiest slackers:
```elixir
iex(20)> BiggestSlacker.Slack.channels |> BiggestSlacker.Stats.top_slackers
[{"acc", "coop56", 1}, {"akron-women-in-tech", "stacyharrison", 2},
 {"announcements", "dmpawlowski", 12}, {"chitchat", "ascendantlogic", 24},
 {"civichackers", "rerooting", 1}, {"cle-tech-breakfasts", "eraserhd", 1},
 {"cleag", "joya.newman", 1}, {"clec-sharp", "edmistond", 12},
 {"clefed", "jjbacik", 1}, {}, {"clejs", "fingers", 18},
 {"clelephpants", "mikestratton", 12}, {"clepy", "dmpawlowski", 8},
 {"clerb", "soulcutter", 117}, {"cocoaheads", "helengriffinjr", 2},
 {"code-summit-county", "mikestratton", 2}, {"codemash", "crr", 1},
 {"coderetreat", "crr", 1}, {"conferences", "rachel.krantz", 14},
 {"coworking", "eraserhd", 1}, {"devops-cle", "ascendantlogic", 61},
 {"electronics", "yashdalfthegray", 1}, {"embeddedsystems", "erichankinson", 5},
 {"erlang", "daveshah", 2}, {"games", "grecar", 1},
 {"giphyfreeforall", "joelbyler", 25}, {"heavy-metal", "ascendantlogic", 12},
 {"intro", "onealexharms", 8}, {"ixdacleveland", "davidmead", 5},
 {"java", "spudfkc", 2}, {"jobs", "glyphrider", 4},
 {"makerchat", "eraserhd", 3}, {"marketplace", "joelbyler", 1},
 {"meta", "jonknapp", 3}, {}, {}, {"nodeschool", "rerooting", 1},
 {"parenting", "mikestratton", 2}, {}, {"railsbridge-cle", "joelbyler", 22},
 {"random", "ascendantlogic", 40}, {"refreshcleveland", "bcolbow", 3}, {},
 {"talks", "jonknapp", 5}, {"thatsmyjam", "mikestratton", 2},
 {"xddcle", "rachel.krantz", 33}]
iex(21)> 
```
