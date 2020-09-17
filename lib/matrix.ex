defmodule Matrix do
  @type t() :: %Matrix{}
  defstruct [
  ]

  @spec new([[integer()]]) :: Matrix.t()
  def new(list_of_lists) do
  end

  @spec get(Matrix.t(), integer(), integer()) :: integer() | nil
  def get(%Matrix{}, row, col) do
  end

  @spec index_of(Matrix.t(), integer()) :: any()
  def index_of(%Matrix{}, target_num) do
  end
end
