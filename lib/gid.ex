defmodule Helper.Gid do
  @account_base 111_111

  def encode_accountid!(id) when is_bitstring(id) do
    encode_accountid!(String.to_integer(id))
  end

  def encode_accountid!(id) when is_integer(id) do
    "A:" <> Helper.Base36.encode(id * @account_base)
  end

  def decode_accountid("A:" <> data) do
    case Helper.Base36.decode(data) do
      {:ok, val} -> {:ok, div(val, @account_base)}
      :error -> {:error, "can not decode account id"}
    end
  end

  def decode_accountid(_) do
    {:error, "is not account id"}
  end

  def decode_accountid!(gid) do
    case decode_accountid(gid) do
      {:ok, val} -> val
      {:error, error} -> raise(error)
    end
  end
end
