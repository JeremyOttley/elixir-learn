defmodule Baseball do
  def batAvgRating(hits, atBats) do
    case hits / atBats do
      avg when avg <= 0.200 -> {:ok, "Turrible"}
      avg when avg <= 0.250 -> {:ok, "Aiight"}
      avg when avg <= 0.280 -> {:ok, "Niiiiiiice"}
      _ -> {:error, "JFC!"}
    end
  end
end

case Baseball.batAvgRating(20, 100) do
  {:ok, result} -> result
  {:error, reason} -> reason
end
