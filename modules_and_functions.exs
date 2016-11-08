defmodule Mymodule do
  def sum(1), do: 1
  def sum(n), do: n+sum(n-1)

  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y,rem(x,y))
end

IO.puts Mymodule.sum(4)
IO.puts Mymodule.gcd(8,12)
