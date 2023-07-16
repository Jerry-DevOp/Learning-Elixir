defmodule Tutorials.Recursion.PrintDigits do
  def upto(0) do
    0 # return
  end
  def upto(nums) do
    IO.puts(nums)#3,2,1,0
    0 # return
    upto(nums-1)
  end
end
