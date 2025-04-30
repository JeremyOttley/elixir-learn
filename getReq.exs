#!/usr/bin/elixir

Mix.install([
  {:req, "~> 0.5.0"}
  ])

Req.get!("https://character.totalpartykill.ca/basic/json/")
|> Map.get(:body)
|> IO.puts()
