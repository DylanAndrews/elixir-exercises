require IEx

defmodule Users do
  dave = %{ name: "Dave", state: "TX", like: "programming" }

  case dave do
    %{ state: some_state} = person ->
      IEx.pry
      IO.puts "#{person.name} lives in #{some_state}"
    _ ->
      IO.puts "No Matches"
  end
end

IO.puts Users
