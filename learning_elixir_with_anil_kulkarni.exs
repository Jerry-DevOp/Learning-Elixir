# Run as: iex --dot-iex path/to/notebook.exs

# Title: Learning Elixir with Anil Kulkarni

# ── Fuctional Programming ──

# Elixir
# immutable
# supports fault tolerance
# functional Programming
# x---->f(x)---->y
# no classes
# no loops it uses Recursion
# ── Elixir on command line ──

# iex (to start running elixir commands)
# self()/(to check pid)
# to exit iex, press ctrl1 c & crtl c

# ── Recursion ──

# Recursion + mutation
# Recursion repeating the same habits
# mutation change in habbit once in a while
# Example the universe is in a state of
# Expansion

defmodule Universe do
  def big_bang do
    IO.puts("Big Bang")
    Process.sleep(1000)
    expand()
  end

  def expand(state \\ 0) do
    IO.puts("Size of Universe is :#{state}")
    Process.sleep(1000)
    expand(state + 1)
    # state + 1 represents mutation
  end
end

# call the function
# Universe.big_bang()

# recursion example.
# what is recursion
# Recursion is a method where the solution
# to a problem depends on the solutions to
# smaller instances of the same problem.
defmodule Math do
  def fact(res, num) do
    if num === 1 do
      res
    else
      new_res = res * num
      fact(new_res, num - 1)
    end
  end
end

IO.puts(Math.fact(1, 6))

# ── Learning and Unlearning ──

a = 1
# a is not being assigned to 1
# rather we use
# left hand side = Right hand Side
# Therefore "="means pattern matching
# So we are matching LSH to RHS
# now check if 1 = a
1 == a
# it reurns true

# string
name = "jerry"
# now check if jerry = name
"jerry" == name

# list example
[a, a] = [1, 1]

# ── Understanding Immutability ──

# this will give you an error
# [a,a] =[1,2] since lSH=RHS
[a, b] = [1, 2]

# whenever we have a variable
# on the lS elixir tinks you want
# to match the variable with a new value
a = 1
a = 3
# a will be 3

# to avoid this behavior
# use ^"variable"
^a = 2
# this will give you an error
# since a = 3
# immutability helps with scalability

name1 = "hello"
IO.puts("#{name1} Jerry")

# ── Actor Model ──

# Input(msg)-->Actor---->Output
# Actors run on processes
# =========================
# Process has
# 1 PID/ process id
# 2 Isolation
# 3 Each process has its own stack and Heap
# =========================
# Communicate through message passing
# Mail box
# executed using FIFO
# Less memory

# ── First Hello world code ──

defmodule Hello do
  def world do
    IO.puts("Hello world")
  end
end

Hello.world()

# ── Function that takes in a variable ──

defmodule Hi do
  def earth(msg) do
    IO.puts("Hello #{msg}")
  end
end

Hi.earth("Jerry")

# ── Data Types ──

# ── 1 Atom ──

# structure of an Atom
# :some_name 0r :"Some Name"
:error
{:error, reason} = {:error, "fil enot found"}

# extract "reason"
reason

# ── 2 strings ──

# use double qoutes
"Lebogang"
