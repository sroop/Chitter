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
    Cheep.create(cheep: params[:cheep], created_at: params[Time.now])
    redirect to('/')
  end

  get '/users/new' do
    erb :"users/new"
  end

  post '/users' do
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

  get '/sessions/new' do
    erb :"sessions/new"
  end

  post '/sessions' do
    email, password = params[:email], params[:password]
    user = User.authenticate(email, password)
    if user
      session[:user_id] = user.id
      redirect to('/')
    else
      # flash[:errors] = ["The email or password is incorrect"]
      erb :"sessions/new"
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
