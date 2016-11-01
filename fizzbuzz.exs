fizzbuzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, a -> a
end

IO.puts fizzbuzz.(0, 1, 2) # -> Fizz
IO.puts fizzbuzz.(0, 0, 2) # -> FizzBuzz
IO.puts fizzbuzz.(1, 1, 2) # -> 2
IO.puts fizzbuzz.(1, 0, 2) # -> Buzz

ex3 = fn
 n -> fizzbuzz.(rem(n,3), rem(n,5), n)
end

IO.puts ex3.(10)
IO.puts ex3.(11)
IO.puts ex3.(12)
IO.puts ex3.(13)
IO.puts ex3.(14)
IO.puts ex3.(15)
IO.puts ex3.(16)
