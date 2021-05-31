defmodule CountBench do
  @moduledoc """
  Documentation for `CountBench`.
  """

  @doc """
  Count the letters in a cursed way.

  ## Examples

      iex> CountBench.letters_cursed("a b c 1 2 3")
      3

      iex> CountBench.letters_cursed("a b c 1 2 3 defg")
      7

  """
  def letters_cursed(str) do
    is_letter = fn c -> (c >= ?a && c <= ?z) || (c >= ?A && c <= ?Z) end
    length(for <<c::utf8 <- str>>, is_letter.(c), do: 1)
  end

  @doc """
  Count the letters using a comprehension.

  ## Examples

      iex> CountBench.letters_comprehension("a b c 1 2 3")
      3

      iex> CountBench.letters_comprehension("a b c 1 2 3 defg")
      7

  """
  def letters_comprehension(str) do
    for <<c::utf8 <- str>>, c in ?a..?z or c in ?A..?Z, reduce: 0 do
      acc -> acc + 1
    end
  end

  @doc """
  Count the letters using regex scan.

  ## Examples

      iex> CountBench.letters_regex("a b c 1 2 3")
      3

      iex> CountBench.letters_regex("a b c 1 2 3 defg")
      7

  """
  def letters_regex(str) do
    Regex.scan(~r/[a-zA-Z]/, str) |> length()
  end

  @doc """
  Count the letters recursively.

  ## Examples

      iex> CountBench.letters_recursive("a b c 1 2 3")
      3

      iex> CountBench.letters_recursive("a b c 1 2 3 defg")
      7

  """
  def letters_recursive(str), do: letters_recursive(str, 0)

  defp letters_recursive(<<>>, total), do: total

  defp letters_recursive(<<c::utf8, rest::binary>>, total) when c in ?a..?z or c in ?A..?Z,
    do: letters_recursive(rest, total + 1)

  defp letters_recursive(<<_::utf8, rest::binary>>, total), do: letters_recursive(rest, total)
end
