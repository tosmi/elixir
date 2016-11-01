fun1 = fn -> (fn -> "Hello"end ) end

other1 = fun1.()

IO.puts other1.()

fun2 = fn name -> (fn -> "Hello #{name}" end) end

other2 = fun2.("Hase")

IO.puts other2.()

fun3 = fn n -> (fn other -> n + other end) end

other3 = fun3.(2)
IO.puts other3.(3)

other4 = fun3.(1)
IO.puts other4.(2)

prefix = fn prefix -> ( fn postfix -> "#{prefix} #{postfix}" end ) end

mrs = prefix.("Mrs.")
IO.puts mrs.("Smith")

IO.puts prefix.("Elixir").("Rocks")
