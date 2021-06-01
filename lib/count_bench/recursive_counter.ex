defmodule CountBench.RecursiveCounter do
  @moduledoc false

  @behaviour CountBench.Counter

  @impl CountBench.Counter
  @spec count_letters(String.t()) :: non_neg_integer()
  def count_letters(str), do: count_letters(str, 0)

  ## Private helpers

  defp count_letters(<<>>, total), do: total

  defp count_letters(<<c::utf8, rest::binary>>, total) when c in ?a..?z or c in ?A..?Z do
    count_letters(rest, total + 1)
  end

  defp count_letters(<<_::utf8, rest::binary>>, total) do
    count_letters(rest, total)
  end
end
