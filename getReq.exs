#!/usr/bin/elixir

Mix.install([
  {:req, "~> 0.5.0"}
  ])

Req.get!("https://jsonplaceholder.typicode.com/users")
|> Map.get(:body)
|> IO.puts()
