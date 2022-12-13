defmodule Helper.StatsEts do
  def stats do
    for t <- :ets.all() do
      :ets.info(t)
    end
  end
end
