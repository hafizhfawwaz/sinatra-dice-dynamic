require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:number_of_dice/:number_of_side") do
  @num_dice = params.fetch("number_of_dice").to_i
  @num_side = params.fetch("number_of_side").to_i

  @rolls = []

  @num_dice.times do
    die = rand(1..@num_side)

    @rolls.push(die)
  end

  erb(:flexible)
end
