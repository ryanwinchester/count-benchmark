# CountBench

[![CI](https://github.com/ryanwinchester/count-benchmark/actions/workflows/ci.yaml/badge.svg)](https://github.com/ryanwinchester/count-benchmark/actions/workflows/ci.yaml)

## Run the benchmarks

```
mix bench
```

## Run the tests

```
mix test
```

## Results

```
Operating System: macOS
CPU Information: Intel(R) Core(TM) i5-9600K CPU @ 3.70GHz
Number of Available Cores: 6
Available memory: 32 GB
Elixir 1.12.0
Erlang 23.0.2

Benchmark suite executing with the following configuration:
warmup: 2 s
time: 5 s
memory time: 0 ns
parallel: 1
inputs: short-string, words-file
Estimated total run time: 56 s

Benchmarking comprehension with input short-string...
Benchmarking comprehension with input words-file...
Benchmarking cursed with input short-string...
Benchmarking cursed with input words-file...
Benchmarking recursive pattern-match with input short-string...
Benchmarking recursive pattern-match with input words-file...
Benchmarking regex with input short-string...
Benchmarking regex with input words-file...

##### With input short-string #####

Name                              ips        average  deviation         median         99th %
recursive pattern-match      927.80 K        1.08 μs  ±1291.21%        0.98 μs        1.98 μs
cursed                       588.74 K        1.70 μs  ±1832.87%        1.98 μs        2.98 μs
comprehension                246.66 K        4.05 μs  ±1767.60%        1.98 μs        3.98 μs
regex                         75.86 K       13.18 μs   ±386.29%        9.98 μs       49.98 μs

Comparison:
recursive pattern-match      927.80 K
cursed                       588.74 K - 1.58x slower +0.62 μs
comprehension                246.66 K - 3.76x slower +2.98 μs
regex                         75.86 K - 12.23x slower +12.11 μs

##### With input words-file #####

Name                              ips        average  deviation         median         99th %
recursive pattern-match          8.27      120.96 ms     ±1.92%      120.34 ms      127.49 ms
comprehension                    4.96      201.71 ms     ±2.33%      200.20 ms      215.99 ms
cursed                           2.62      381.57 ms     ±7.15%      373.17 ms      454.48 ms
regex                           0.172     5817.50 ms     ±0.00%     5817.50 ms     5817.50 ms

Comparison:
recursive pattern-match          8.27
comprehension                    4.96 - 1.67x slower +80.76 ms
cursed                           2.62 - 3.15x slower +260.61 ms
regex                           0.172 - 48.10x slower +5696.54 ms
```

![](https://raw.githubusercontent.com/ryanwinchester/count-benchmark/main/priv/static/newplot.png)

## Acknowledgements

* List of words from https://github.com/dwyl/english-words
