require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :form
    end

    post '/teams' do
      @team = Team.new(params[:team][:name], params[:team][:motto])

      params[:team][:heroes].each do |details|
        Hero.new(details[:name], details[:power], details[:bio])
      end

      @heroes = Hero.all

      erb :team
    end

end
