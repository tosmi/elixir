list_concat = fn a, b -> a ++ b end

l = list_concat.([1,2], [3,4])

IO.puts l

sum = fn a,b,c -> a + b + c end

IO.puts sum.(1,2,3)

pair_tuple_to_list = fn {a, b} -> [a,b] end

l = pair_tuple_to_list.({1234, 5678})

[a,_] = l

IO.puts a

handle_open = fn
  {:ok, file} -> "Read data: #{IO.read(file, :line)}"
  {_, error} -> "Error: #{:file.format_error(error)}"
end

IO.puts handle_open.(File.open("functions.exs"))
IO.puts handle_open.(File.open("doesnotexist"))
