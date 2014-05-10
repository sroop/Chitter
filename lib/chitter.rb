require 'sinatra/base'
require 'cheep'
require 'data_mapper'

env = ENV["RACK_ENV"] || "development"
DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")
DataMapper.finalize
DataMapper.auto_upgrade!

class Chitter < Sinatra::Base
  get '/' do
  	@cheeps = Cheep.all
    erb :index
  end

  post '/' do
    Cheep.create(cheep: params["cheep"], user: params["user"], username: params["@username"], created_at: params[Time.now])
    redirect to('/')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
