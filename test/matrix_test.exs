defmodule MatrixTest do
  use ExUnit.Case

  alias Matrix

  @sorted_matrix_3_x_3 Matrix.new([
    [1,2,3],
    [5,6,7],
    [10, 12, 15]
  ])

  @sorted_matrix_3_x_4 Matrix.new([
    [10, 30, 50, 100],
    [30, 50, 100, 200],
    [50, 60, 120, 300]
  ])

  @sorted_matrix_4_x_4 Matrix.new([
    [10, 50, 600, 1000],
    [20, 100, 1100, 1900],
    [40, 200, 1300, 1901],
    [140, 500, 1400, 2000]
  ])

  describe "3x3" do
    test "get/3 existing" do
      assert Matrix.get(@sorted_matrix_3_x_3, 0, 0) == 1
    end

    test "get/3 not existing" do
      assert Matrix.get(@sorted_matrix_3_x_3, 0, 10) == nil
    end

    test "index_of/2 existing" do
      assert Matrix.index_of(@sorted_matrix_3_x_3, 2) == {0,1}
    end

    test "index_of/2 not existing" do
      assert Matrix.index_of(@sorted_matrix_3_x_3, 44) == {nil, nil}
    end
  end

  describe "4x4" do
    test "index_of/2 existing" do
      assert Matrix.index_of(@sorted_matrix_4_x_4, 1901) == {2,3}
    end

    test "index_of/2 not existing" do
      assert Matrix.index_of(@sorted_matrix_4_x_4, 4500) == {nil, nil}
    end
  end

  describe "3x4" do
    test "index_of/2 existing" do
      assert Matrix.index_of(@sorted_matrix_3_x_4, 120) == {2,2}
    end
  end
end
