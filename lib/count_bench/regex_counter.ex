defmodule CountBench.RegexCounter do
  @moduledoc false

  @behaviour CountBench.Counter

  @impl CountBench.Counter
  @spec count_letters(String.t()) :: non_neg_integer()
  def count_letters(str), do: length(Regex.scan(~r/[a-zA-Z]/, str))
end
