defmodule Hello do


  def world do

    {error, reason} = {:error, "file not found"}
    reason

    {:ok ,msg} = {:ok, "statuse 200 ok"}
    msg

    IO.puts("Hello world Elixir")

  end


a = 1

[a,a] = [1,1]
[a,b] = [1,2]

# 1.3: Strings, and pattern matching on raw representation of binaries
"My" <> rest = "My String"
rest
i("abc") # checking the information for the binary string
?a
?b

name = "Otir"
name
is_binary(name)
msg = "Hello " <> name
"Hello " <> name = msg
name
<<head, rest::binary>> = name
head
head == ?O
<<"Ot", rest::binary>> = name
rest
<<head::binary-size(2), rest::binary>> = name
head


# 1.4: charlist and proccesses

chars = 'Otir'
'Hello ' ++ chars
is_list(chars)

my_list = ["a", "b", "c"]
Enum.at(my_list, 0)
[first, second, third] = my_list
second
[_, _, third] = ["a" , "b", "c"]
third
hd(my_list)
tl(my_list)

# .Enum to check the rich API
# h(Enum.at) for documentation

my_pid = self()
my_pid

# 1.5: Tuples and key-word list

{a, b} = {1, 2}
a

{:reply, msg, state} = {:reply, "Otir", [1, 2]}
msg
State

data = [a: 1, b: 2]
[{:a, 1}] = [a: 1]
data[:a]

my_map = %{a: 1, b: 2, c: 3}

end
