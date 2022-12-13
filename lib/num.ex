defmodule Helper.Num do
  def to_i(value) when is_integer(value), do: value
  def to_i(value) when is_float(value), do: round(value)
  def to_i(value) when is_bitstring(value), do: String.to_integer(value)

  def to_f(value) when is_float(value), do: value
  def to_f(value) when is_integer(value), do: value * 1.0

  def to_f(value) when is_bitstring(value) do
    cond do
      String.contains?(value, ".") ->
        String.to_float(value)

      String.contains?(value, "E") && !String.contains?(value, ".") ->
        String.to_float(String.replace(value, "E", ".0E"))

      String.contains?(value, "e") && !String.contains?(value, ".") ->
        String.to_float(String.replace(value, "e", ".0e"))

      true ->
        String.to_integer(value) * 1.0
    end
  end
end
