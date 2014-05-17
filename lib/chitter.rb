require 'sinatra/base'
require_relative './datamapper_setup'

class Chitter < Sinatra::Base

enable :sessions
set :session_secret, 'super secret'

  get '/' do
  	@cheeps = Cheep.all
    erb :index
  end

  post '/' do
    Cheep.create(cheep: params["cheep"], user: params["user"], username: params["username"], created_at: params[Time.now])
    redirect to('/')
  end

  get '/users/new' do
    erb :"users/new"
  end

  post '/users/new' do
    user = User.create(name: params[:name],
                email: params[:email],
                username: params[:username],
                password: params[:password])
    if user.save
      session[:user_id] = user.id
      redirect to('/')
    else
      flash.now[:errors] = @user.errors.full_messages
      erb :"users/new"
    end
  end

helpers do
    def current_user    
      User.get(session[:user_id]) if session[:user_id]
    end
end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
