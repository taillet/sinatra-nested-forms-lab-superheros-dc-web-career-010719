require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :super_hero
    end

    post "/teams" do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      @superheroes = []
      i = 0
        for i in 0..2
          @superheroes << SuperHero.new(name: params[:team][:members][i][:name],
                                        power: params[:team][:members][i][:power],
                                        bio: params[:team][:members][i][:bio])
        end
      erb :team
    end
end
