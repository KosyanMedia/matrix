defmodule Matrix do
  @type t() :: %Matrix{}
  defstruct [
  ]

  @spec new([[integer()]]) :: Matrix.t()
  def new(list_of_lists) do
  end

  @spec get(Matrix.t(), integer(), integer()) :: integer() | nil
  def get(%Matrix{mtrx: mtr}, row, col) do
  end

  @spec index_of(Matrix.t(), integer()) :: {integer(), integer()} | {nil, nil}
  def index_of(%Matrix{mtrx: mtrx, col_length: col_size, row_length: row_size}, target_num) do
  end
end
