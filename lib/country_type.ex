defmodule Helper.Country do
  @enforce_keys [:iso, :name]
  defstruct iso: nil, name: nil, prefix: nil

  @type t :: %__MODULE__{
          iso: String.t(),
          name: String.t(),
          prefix: String.t()
        }
end
