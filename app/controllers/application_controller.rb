require 'sinatra/base'
require "pry"

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  post '/teams' do
    ##dont forget to make instances
    ## it is params[:teams] not params[team] v
    @team = Team.new(params[:team])
    # binding.pry
    params[:team][:hero].each do |hero|
      Hero.new(hero)
    end
    @heroes = Hero.all
    erb :team
  end

end
