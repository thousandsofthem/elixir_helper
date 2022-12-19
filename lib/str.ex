defmodule Helper.Str do
  def to_s(val) when is_bitstring(val), do: val
  def to_s(val), do: inspect(val)
end
