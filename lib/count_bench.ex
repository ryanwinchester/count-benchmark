defmodule CountBench do
  @moduledoc """
  Documentation for `CountBench`.
  """

  @doc """
  Count the letters using cursed code.

  ## Examples

      iex> CountBench.letters_cursed("a b c 1 2 3")
      3

      iex> CountBench.letters_cursed("a b c 1 2 3 defg")
      7

  """
  defdelegate letters_cursed(str), to: CountBench.CursedCounter, as: :count_letters

  @doc """
  Count the letters using list comprehensions with reduce option.

  ## Examples

      iex> CountBench.letters_comprehension("a b c 1 2 3")
      3

      iex> CountBench.letters_comprehension("a b c 1 2 3 defg")
      7

  """
  defdelegate letters_comprehension(str), to: CountBench.ComprehensionCounter, as: :count_letters

  @doc """
  Count the letters using regex scan.

  ## Examples

      iex> CountBench.letters_regex("a b c 1 2 3")
      3

      iex> CountBench.letters_regex("a b c 1 2 3 defg")
      7

  """
  defdelegate letters_regex(str), to: CountBench.RegexCounter, as: :count_letters

  @doc """
  Count the letters using recursive functions with binary pattern-matching.

  ## Examples

      iex> CountBench.letters_recursive("a b c 1 2 3")
      3

      iex> CountBench.letters_recursive("a b c 1 2 3 defg")
      7

  """
  defdelegate letters_recursive(str), to: CountBench.RecursiveCounter, as: :count_letters
end
