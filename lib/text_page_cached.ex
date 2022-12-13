defmodule Helper.TextPageCached do
  use GenServer
  import Ecto.Query

  require Logger

  @table :text_page_ets

  # 60 min
  @run_every 60 * 60 * 1000

  def start_link(state) do
    repo = Keyword.fetch!(state, :repo)
    schema = Keyword.fetch!(state, :schema)
    GenServer.start_link(__MODULE__, name: __MODULE__, schema: schema, repo: repo)
  end

  def init(state) do
    :ets.new(@table, [:set, :public, :named_table, read_concurrency: true])

    populate(state)

    Process.send_after(self(), :populate, @run_every)
    {:ok, state}
  end

  def handle_info(:populate, state) do
    populate(state)

    # reschedule job after  @run_every
    Process.send_after(self(), :populate, @run_every)
    {:noreply, state}
  end

  def fetch(path = "/" <> _) do
    case :ets.lookup(@table, path) do
      [{_, page}] -> page
      _ -> nil
    end
  end

  def populate(state) do
    repo = Keyword.fetch!(state, :repo)
    schema = Keyword.fetch!(state, :schema)
    pages = schema |> where(enabled: true) |> repo.all()

    :ets.delete_all_objects(@table)

    for page <- pages do
      :ets.insert(@table, {page.path, page})
    end

    :ok
  end
end
