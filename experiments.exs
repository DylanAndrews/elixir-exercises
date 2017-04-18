require IEx
data = %{ name: "Dave", state: "Texas", likes: "Elixir"}

for key <- [ :name, :like ] do
  %{ ^key => value } = data
  IEx.pry
  value
end
