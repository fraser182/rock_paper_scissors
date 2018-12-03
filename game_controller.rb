require('sinatra')
require('sinatra/contrib/all')
require_relative ('./models/game.rb')
also_reload('./models/*') # reload everything in the models folder

# http://localhost:4567/
get ('/') do
  erb(:home)
end


get ('/rock') do
  erb(:rock)
end

get ('/paper') do
  erb(:paper)
end

get ('/scissors') do
  erb(:scissors)
end

get '/:choice1/:choice2' do
  choice1 = params[:choice1]
  choice2 = params[:choice2]
  game = Game.new(choice1,choice2)
  @game = game.win_loss_or_draw(choice1, choice2)
  erb (:result)
end
