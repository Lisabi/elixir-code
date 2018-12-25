defmodule Test do
  ##
  ## ===============================================
  ## Represent a tree of sentences as tuples. Traverse the tree, presenting an
  ## indented list. For example, traverse({"See Spot.", {"See Spot sit.", "See Spot run."}})
  ## would return:
  ## See Spot.
  ##   See Spot sit.
  ##   See Spot run.
  ## ===============================================
  ##

  def main do
    my_tuple = {"See Spot.", {"See Spot sit.", "See Spot run."}}

    my_tuple |> transverse()
  end

  def transverse(tuple) do
    tuple
    |> transverse(0)
  end

  defp transverse(tuple, index_level) do
    append_string = String.duplicate("  ", index_level)

    tuple
    |> Tuple.to_list()
    |> Enum.each(fn element ->
      cond do
        is_binary(element) -> IO.puts(append_string <> element)
        is_tuple(element) -> element |> transverse(index_level + 1)
      end
    end)
  end
end
