require 'benchmark'
result = Benchmark.measure do
  10_000.times do
    25 * 50
  end
end
puts result
