defmodule ResistorColor do
  @moduledoc false
  @resistors_colors %{
    "black" => 0,
    "brown" => 1,
    "red" => 2,
    "orange" => 3,
    "yellow" => 4,
    "green" => 5,
    "blue" => 6,
    "violet" => 7,
    "grey" => 8,
    "white" => 9
  }
  @spec colors() :: list(String.t())
  def colors do
    @resistors_colors
    |> Enum.sort(fn {_k1, v1}, {_k2, v2} -> v1 < v2 end) #sort by value
    |> Enum.map(fn {k, _v} -> k end) # sorted color names
  end

  @spec code(String.t()) :: integer()
  def code(color) do

    @resistors_colors |> Map.get(color)
  end
end
