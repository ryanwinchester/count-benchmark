defmodule CountBench.ComprehensionCounter do
  @moduledoc false

  @behaviour CountBench.Counter

  @impl CountBench.Counter
  @spec count_letters(String.t()) :: non_neg_integer()
  def count_letters(str) do
    for <<c::utf8 <- str>>, c in ?a..?z or c in ?A..?Z, reduce: 0 do
      acc -> acc + 1
    end
  end
end
