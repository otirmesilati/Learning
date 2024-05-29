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

end
