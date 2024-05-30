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

# 1.3: Strings
"My" <> rest = "My String"
rest
i("abc") # checking the information for the binary string
?a
?b

name = "Otir"
name
is_binary(name)
msg = "Hello " <> name

end
