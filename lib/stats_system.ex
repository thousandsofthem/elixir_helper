defmodule Helper.StatsSystem do
  def stats do
    :erlang.system_flag(:scheduler_wall_time, true)

    %{
      process: process(),
      schedulers_online: :erlang.system_info(:schedulers_online),
      erlang_vm_used_io_bytes: erlang_vm_used_io_bytes(),
      scheduler_utilization: get_utilization()
    }
  end

  # enum, memory used by type in bytes
  def memory do
    Enum.into(:erlang.memory(), %{})
  end

  # erlang_vm_used_io_bytes
  def erlang_vm_used_io_bytes do
    {
      {:input, input},
      {:output, output}
    } = :erlang.statistics(:io)

    {input, output}
  end

  def process do
    %{
      run_queue: :erlang.statistics(:run_queue),
      process_count: :erlang.system_info(:process_count),
      process_limit: :erlang.system_info(:process_limit)
    }
  end

  @doc ~S"""
  Calculates scheduler utilization per scheduler.
  Returns a list of floating point values range (0-1) indicating 0-100% utlization.
  """
  def get_utilization do
    :scheduler_wall_time
    |> :erlang.statistics()
    |> case do
      x when is_list(x) -> :lists.sort(x) |> Enum.map(fn {_, u, t} -> u / t end)
      _ -> []
    end
  end
end
