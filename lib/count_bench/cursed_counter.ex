defmodule CountBench.CursedCounter do
  @moduledoc false

  @behaviour CountBench.Counter

  @impl CountBench.Counter
  @spec count_letters(String.t()) :: non_neg_integer()
  def count_letters(str) do
    is_letter = fn c -> (c >= ?a && c <= ?z) || (c >= ?A && c <= ?Z) end
    length(for <<c::utf8 <- str>>, is_letter.(c), do: 1)
  end
end
