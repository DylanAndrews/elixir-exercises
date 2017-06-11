require IEx
defmodule MySpawn do
  def greet do
    receive do
      {sender, msg} ->
        send sender, { :ok, "Hello, #{msg}"}
        greet
    end
  end

  def say_goodbye do
    receive do
      {sender, msg} ->
        send sender, { :ok, "Goodbye, #{msg}"}
        say_goodbye
      end
  end
end

goodbye_pid = spawn(MySpawn, :say_goodbye, [])
send goodbye_pid, {self, "Fred"}
# send goodbye_pid, {self, "Betty"}

receive do
  {:ok, message} ->
    IO.puts message
end

greet_pid = spawn(MySpawn, :greet, [])
send greet_pid, {self, "Betty"}
# send greet_pid, {self, "Betty"}

receive do
  {:ok, message} ->
    IO.puts message
end
