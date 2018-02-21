require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      # binding.pry
      @team = Team.new(params[:team][:name], params[:team][:motto])
      @hero1 = Hero.new(params[:team][:members][0][:name], params[:team][:members][0][:power], params[:team][:members][0][:bio])
      @hero2 = Hero.new(params[:team][:members][1][:name], params[:team][:members][1][:power], params[:team][:members][1][:bio])
      @hero3 = Hero.new(params[:team][:members][2][:name], params[:team][:members][2][:power], params[:team][:members][2][:bio])
      # binding.pry
      erb :team
    end

    # get '/teams' do
    #   erb :team
    # end
end
