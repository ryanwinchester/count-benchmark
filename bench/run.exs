str =
  "../priv/words_alpha.txt"
  |> Path.expand(__DIR__)
  |> File.read!()

Benchee.run(%{
  "cursed" => fn -> CountBench.letters_cursed(str) end,
  "comprehension" => fn -> CountBench.letters_comprehension(str) end,
  "regex" => fn -> CountBench.letters_regex(str) end,
  "recursive pattern-match" => fn -> CountBench.letters_recursive(str) end,
})
