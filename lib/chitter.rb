require 'sinatra/base'
require_relative './datamapper_setup'

class Chitter < Sinatra::Base

  get '/' do
  	@cheeps = Cheep.all
    erb :index
  end

  post '/' do
    Cheep.create(cheep: params["cheep"], user: params["user"], username: params["username"], created_at: params[Time.now])
    redirect to('/')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
