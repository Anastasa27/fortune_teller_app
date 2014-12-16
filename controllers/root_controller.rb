class RootController < ApplicationController

fortunes = [
  "You will live long and prosper.",
  "Beware of dark alleys.",
  "Do or do not.  There is no try.",
  "A thrilling time is in your immediate future.",
  "You already know the answer to the questions lingering inside your head.",
  "The greatest risk is not taking one.",
  "Everyone agrees. You are the best.",
  "Let the deeds speak.",
  "The man on the top of the mountain did not fall there.",
  "Fortune favors the bold.",
  "It's better to be alone sometimes."
]


  get("/") do
    @fortunes = fortunes.sample
    render(:erb, :index)
  end

  get("/:name") do
    @fortunes = fortunes.sample
    @name = params[:name]
    render(:erb, :name)
  end

  post("/fortunes/:fortunes") do
    fortunes.push(params[:fortunes])
  end
end
