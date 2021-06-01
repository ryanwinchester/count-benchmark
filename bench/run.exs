# Use a large file with almost 500k words to get a better comparison than just
# using a short string of characters.
file_contents =
  "../priv/data/words.txt"
  |> Path.expand(__DIR__)
  |> File.read!()

# Run the benchmark with a short string of characters and the large file input.
# Output to console and HTML.
Benchee.run(
  %{
    "cursed" => fn input -> CountBench.letters_cursed(input) end,
    "comprehension" => fn input -> CountBench.letters_comprehension(input) end,
    "regex" => fn input -> CountBench.letters_regex(input) end,
    "recursive pattern-match" => fn input -> CountBench.letters_recursive(input) end,
  },
  inputs: %{
    "short-string" => "a b c d e f g 1 2 3 4 5 ! @ # $ % ^ & * ( )",
    "words-file" => file_contents
  },
  formatters: [
    Benchee.Formatters.Console,
    {Benchee.Formatters.HTML, file: "bench_html/index.html"},
  ]
)
