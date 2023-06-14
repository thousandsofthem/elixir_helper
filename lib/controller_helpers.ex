defmodule Helper.ControllerHelpers do
  require Logger

  import Helper.Num, only: [to_i: 1]
  import Helper.Blank, only: [present?: 1]

  def param_last_id(params) do
    if present?(params["last_id"]) do
      to_i(params["last_id"])
    else
      nil
    end
  end

  def param_cursor(params) do
    if present?(params["cursor"]) do
      to_i(params["cursor"])
    else
      nil
    end
  end

  def current_page(params) do
    if present?(params["page"]) do
      to_i(params["page"])
    else
      1
    end
  end

  def param_per_page(params, default \\ 50, max \\ 5000) do
    if present?(params["per_page"]) do
      per_page = to_i(params["per_page"])

      cond do
        per_page > max -> default
        per_page < 1 -> default
        true -> per_page
      end
    else
      default
    end
  end

  def param_to_bool(param) do
    case param do
      "false" -> false
      "true" -> true
      _ -> nil
    end
  end
end
