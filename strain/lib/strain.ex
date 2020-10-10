defmodule Strain do
  @doc """
  Given a `list` of items and a function `fun`, return the list of items where
  `fun` returns true.

  Do not use `Enum.filter`.
  """
  @spec keep(list :: list(any), fun :: (any -> boolean)) :: list(any)
  def keep(list, fun) do

    list
    |> Enum.reduce([], fn(x, accumulator) ->
      case fun.(x) do
        true -> accumulator ++ [x]
        false -> accumulator
      end
    end)
  end

  @doc """
  Given a `list` of items and a function `fun`, return the list of items where
  `fun` returns false.

  Do not use `Enum.reject`.
  """
  @spec discard(list :: list(any), fun :: (any -> boolean)) :: list(any)
  def discard(list, fun) do
    {_is_true, is_false} = list
    |> Enum.split_with(fn x -> fun.(x) end)
    is_false

  end
end
