pattern_matcher = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, n) -> n
end

fizzbuzz = fn (n) ->
  IO.puts pattern_matcher.(rem(n, 3), rem(n, 5), n)
end

Enum.map(1..100, fizzbuzz)
