defmodule Baseball do
  def batAvgRating(hits, atBats) do
    case hits / atBats do
      avg when avg <= 0.200 -> "Turrible"
      avg when avg >= 0.250 -> "Aiight"
      avg when avg <= 0.280 -> "Niiiiiiice"
      _ -> "JFC!"
    end
  end
end

Baseball.batAvgRating(20, 100)
