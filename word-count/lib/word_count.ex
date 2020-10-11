defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    splitted = sentence
    |> String.downcase
    |> String.split(~r/[^[:alnum:]-]/u, trim: true)

    splitted
    |> Enum.uniq
    |> Map.new(&({&1, count_by_word(splitted, &1)}))
  end


  def count_by_word(splitted, word) do
    splitted
    |> Enum.count(&(&1 == word))
  end


end
