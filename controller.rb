require ( 'sinatra' )
require ( 'sinatra/contrib/all' )
require ( 'pry-byebug' )
require_relative ( 'models/game.rb' )


get "/" do
  erb (:home)
end

get "/rules" do
  erb (:rules)
end


get '/match/:hand1/:hand2' do
  game = Game.new(params['hand1'], params['hand2'])
  @competition = game.match()
  erb (:result)
end
