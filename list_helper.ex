defmodule ListHelper do

  def main do
    my_list = [91, 2, 3, 4, 5, 5, 65, 6, -2]
    list_size(my_list)
  end

  def list_size(list) do
    list_size(list, 0)
  end

  defp list_size([head | rest], size) do
    list_size(rest, size + 1)
  end

  defp list_size([], size) do
    size
  end

  def get_max(list) do
    get_max(list, 0)
  end

  defp get_max([current | rest], max) do
    cond do
      max > current ->
        get_max(rest, max)

      max < current || max == current ->
        get_max(rest, current)
    end
  end

  defp get_max([], max) do
    max
  end

  def get_min(list) do
    get_min(list, List.first(list))
  end

  defp get_min([current | rest], min) do
    cond do
      min > current || min == current -> get_min(rest, current)
      min < current -> get_min(rest, min)
    end
  end

  defp get_min([], min) do
    min
  end
end
