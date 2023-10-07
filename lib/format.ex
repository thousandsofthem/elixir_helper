defmodule Helper.Format do
  @bits ["b", "Kb", "Mb", "Gb", "Tb", "Pb", "Eb", "Zb", "Yb"]
  @bytes ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"]

  def number_with_delimiter(i) when is_nil(i), do: nil
  def number_with_delimiter(i) when is_binary(i), do: number_with_delimiter(String.to_integer(i))

  def number_with_delimiter(i) when is_integer(i) do
    prefix = if i >= 0, do: "", else: "-"

    i
    |> abs()
    |> Integer.to_charlist()
    |> Enum.reverse()
    |> Enum.chunk_every(3, 3, [])
    |> Enum.join(",")
    |> Kernel.<>(prefix)
    |> String.reverse()
  end

  def number_with_delimiter(i) when is_float(i) do
    str = :erlang.float_to_binary(i, [:compact, decimals: 2])
    [base, fraction] = str |> String.split(".")
    number_with_delimiter(base) <> "." <> fraction
  end

  def number_with_delimiter(i, _decimals) when is_integer(i), do: number_with_delimiter(i)

  def number_with_delimiter(i, decimals) when is_float(i) and is_integer(decimals) do
    str = :erlang.float_to_binary(i, [:compact, decimals: decimals])
    [base, fraction] = str |> String.split(".")
    value = number_with_delimiter(base) <> "." <> fraction
    # hack - prevent -0 from becoming positive
    if i < 0 && !String.starts_with?(value, "-"), do: "-" <> value, else: value
  end

  @doc """
  Returns a human-readable string for the given numeric value.
  ## Arguments:
  - `value` (Integer/Float/String) representing the filesize to be converted.
  - `options` (Struct) representing the options to determine base, rounding and units.
  ## Options
  - `bits`: `true` if the result should be in bits, `false` if in bytes. Defaults to `false`.
  - `spacer`: the string that should be between the number and the unit. Defaults to `" "`.
  - `round`: the precision that the number should be rounded down to. Defaults to `2`.
  - `base`: the base for exponent calculation. `2` for binary-based numbers, any other Integer can be used. Defaults to `2`.
  ## Example - Get bit-sized file size for 1024 byte
      human_size(1024, %{bits: true})
      "8 Kb"
  """
  def human_size(value), do: human_size(value, %{})
  def human_size(value, _options) when is_nil(value), do: nil

  def human_size(value, options) when is_binary(value),
    do: human_size(String.to_integer(value), options)

  def human_size(value, options) when is_integer(value), do: human_size(value * 1.0, options)

  def human_size(0.0, options) do
    spacer = Map.get(options, :spacer, " ")
    bits = Map.get(options, :bits, false)

    {:ok, unit} =
      case bits do
        true -> Enum.fetch(@bits, 0)
        false -> Enum.fetch(@bytes, 0)
      end

    Enum.join([0, unit], spacer)
  end

  def human_size(value, options) when is_float(value) do
    bits = Map.get(options, :bits, false)
    base = Map.get(options, :base, 2)
    spacer = Map.get(options, :spacer, " ")
    round = Map.get(options, :round, 2)

    ceil =
      if base > 2 do
        1000
      else
        1024
      end

    neg = value < 0

    value =
      case neg do
        true -> -value
        false -> value
      end

    value = if bits, do: 8 * value, else: value

    {exponent, _rem} =
      (:math.log(value) / :math.log(ceil))
      |> Float.floor()
      |> Float.to_string()
      |> Integer.parse()

    result = Float.round(value / :math.pow(ceil, exponent), base)

    result =
      if Float.floor(result) == result do
        round(result)
      else
        result
        |> Float.round(round)
      end

    {:ok, unit} =
      case bits do
        true -> Enum.fetch(@bits, exponent)
        false -> Enum.fetch(@bytes, exponent)
      end

    case neg do
      true -> "-" <> Enum.join([result, unit], spacer)
      false -> Enum.join([result, unit], spacer)
    end
  end

  def invert_map(map) do
    for {k, v} <- map, into: %{}, do: {v, k}
  end
end
