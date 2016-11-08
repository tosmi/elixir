defmodule Times do
  def double(n), do: n*2
  def triple(n), do: n*3
  def quadruple(n), do: double(double(n))
end

IO.puts Times.double(3)
IO.puts Times.triple(3)
IO.puts Times.quadruple(3)
