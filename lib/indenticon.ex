defmodule Indenticon do
  def main(input) do
    input
    |> hash_input
    |> pick_color
  end

  def pick_color(%Indenticon.Image{hex: [r, g, b | _tail]} = image) do
    %Indenticon.Image{image | color: {r, g, b}}
  end

  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Indenticon.Image{hex: hex}
  end
end
