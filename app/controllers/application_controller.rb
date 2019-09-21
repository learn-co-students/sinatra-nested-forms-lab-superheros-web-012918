require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end


  post '/teams' do
    @team = Team.new(params)

    @members = params[:team][:members].map do |member|
      Superhero.new(member)
    end

    @mem1 = @members[0]
    @mem2 = @members[1]
    @mem3 = @members[2]

    erb :team
  end


end
