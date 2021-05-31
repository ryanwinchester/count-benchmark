defmodule CountBench.Counter do
  @moduledoc "Counter behaviour."

  @callback count_letters(String.t()) :: non_neg_integer()
end
