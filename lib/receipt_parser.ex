defmodule Helper.ReceiptParser do

  def extract_subscriptions(raw = %{"receipt" => %{"in_app" => in_apps}}) when is_list(in_apps) do
    latest = raw["latest_receipt_info"] || []
    iaps = in_apps ++ latest

    for(inapp <- iaps, !is_nil(inapp["expires_date_ms"]), do: inapp)
    |> Enum.group_by(fn inapp -> inapp["original_transaction_id"] end)
  end

  def extract_subscriptions(_raw = %{}), do: %{}

  def to_datetime(value_ms) do
    value_ms
    |> Helper.Num.to_i()
    |> Kernel./(1000)
    |> round
    |> DateTime.from_unix!()
  end


  # for Restore()
  @spec extract_original_transaction_ids(map) :: list
  def extract_original_transaction_ids(raw = %{}) do
    extract_recursive_walk(raw)
    |> List.flatten()
    |> Enum.uniq()
    |> Enum.reject(&is_nil/1)
  end

  defp extract_recursive_walk(map = %{}) do
    for {k, val} <- map do
      extract_recursive_walk(k, val)
    end
  end

  defp extract_recursive_walk(list) when is_list(list) do
    for val <- list do
      extract_recursive_walk(val)
    end
  end

  defp extract_recursive_walk(_k, val = %{}), do: extract_recursive_walk(val)
  defp extract_recursive_walk(_k, val) when is_list(val), do: extract_recursive_walk(val)
  defp extract_recursive_walk("original_transaction_id", val), do: val
  defp extract_recursive_walk(_k, _val), do: nil


end
