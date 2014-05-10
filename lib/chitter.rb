require 'sinatra/base'

class Chitter < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    Cheep.create(cheep: params["cheep"], name: params["name"], username: params["@username"], time: params["time"])
    redirect to('/')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
