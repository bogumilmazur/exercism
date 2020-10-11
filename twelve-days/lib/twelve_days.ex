defmodule TwelveDays do

  @presents %{
    1 => {:first, "a Partridge in a Pear Tree"},
    2 => {:second, "two Turtle Doves, and"},
    3 => {:third, "three French Hens,"}
  }
  @doc """
  Given a `number`, return the song's verse for that specific day, including
  all gifts for previous days in the same line.
  """
  @spec verse(number :: integer) :: String.t()
  def verse(number) do
    {nth, present} = @presents[number]
    "On the #{nth} day of Christmas my true love gave to me: "
    <> (number..1 |> Enum.map(fn x -> {_nth, present} = @presents[x] end))
  end

  @doc """
  Given a `starting_verse` and an `ending_verse`, return the verses for each
  included day, one per line.
  """
  @spec verses(starting_verse :: integer, ending_verse :: integer) :: String.t()
  def verses(starting_verse, ending_verse) do
  end

  @doc """
  Sing all 12 verses, in order, one verse per line.
  """
  @spec sing() :: String.t()
  def sing do
  end
end
