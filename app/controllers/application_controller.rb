require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]

      @h1name = params[:team][:members][0][:name]
      @h1power = params[:team][:members][0][:power]
      @h1bio = params[:team][:members][0][:bio]

      @h2name = params[:team][:members][1][:name]
      @h2power = params[:team][:members][1][:power]
      @h2bio = params[:team][:members][1][:bio]

      @h3name = params[:team][:members][2][:name]
      @h3power = params[:team][:members][2][:power]
      @h3bio = params[:team][:members][2][:bio]

      erb :super_hero
    end


end
