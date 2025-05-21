Mix.install([:req, :jason])  

"https://api.github.com/users/lawik/repos"  
|> Req.get!()  
|> then(& &1.body)
# And now we get very parallel
|> Task.async_stream(fn %{"stargazers_url" => url} ->  
 url  
 |> Req.get!()  
 |> then(& &1.body)  
end)  
|> Enum.flat_map(fn result ->  
 case result do  
   {:ok, stargazers} ->  
     stargazers  
   err ->  
     IO.inspect(err, label: "Error fetching stargazers")  
     []  
 end  
end)  
|> Enum.uniq()  
|> Enum.count()  
|> IO.inspect()
