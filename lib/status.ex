defmodule Status do
  @moduledoc """
  Define the Status struct with desc, id and text key required
  """
  @type t :: %Status{code: integer(), desc: String.t(), text: atom()}
  @enforce_keys [:code, :desc, :text]
  @derive Jason.Encoder

  defstruct [:code, :desc, :text]
end
