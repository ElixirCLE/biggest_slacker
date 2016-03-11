List rooms by most populated:
```
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
