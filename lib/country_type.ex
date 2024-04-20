defmodule Helper.Country do
  @enforce_keys [:iso, :name]
  defstruct iso: nil, name: nil

  @type t :: %__MODULE__{
          iso: String.t(),
          name: String.t()
        }
end
